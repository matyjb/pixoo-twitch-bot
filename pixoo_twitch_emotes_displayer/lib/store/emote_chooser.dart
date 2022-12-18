import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/models/emote/emote.dart';
import 'package:pixoo_twitch_emotes_displayer/models/pixoo_device/pixoo_device.dart';
import 'package:pixoo_twitch_emotes_displayer/services/t_emotes_api.dart';
import 'package:pixoo_twitch_emotes_displayer/store/app_config.dart';
import 'package:pixoo_twitch_emotes_displayer/store/cache_server.dart';
import 'package:pixoo_twitch_emotes_displayer/store/emote_listener.dart';
import 'package:process_run/shell_run.dart';

part 'emote_chooser.g.dart';

class EmoteChooser extends _EmoteChooserBase with _$EmoteChooser {
  static final EmoteChooser _singleton = EmoteChooser._internal();

  factory EmoteChooser() {
    return _singleton;
  }

  EmoteChooser._internal();
}

abstract class _EmoteChooserBase with Store {
  final EmoteListener _emoteListener = EmoteListener();
  final AppConfig _appConfig = AppConfig();
  final CacheServer _cacheServer = CacheServer();

  @observable
  List<String> emotesFilePaths = [];

  @observable
  Emote? displayedEmote;

  void startDirWatch() {
    String? cachePath = _cacheServer.emoteCachePath;
    if (cachePath != null) {
      Directory(cachePath).watch().listen((event) {
        setEmotesFiles(
            Directory(cachePath).listSync().map((e) => e.path).toList());
      });
    }
  }

  @action
  void setEmotesFiles(List<String> paths) {
    emotesFilePaths = paths;
  }

  @action
  void refreshDisplayedEmote() {
    if (_emoteListener.ranking.isNotEmpty) {
      var emote = _emoteListener.ranking.first.value.v2 >=
              _appConfig.emoteOccurancesThreshold
          ? _emoteListener.ranking.first.key
          : null;
      if (emote != null && emote != displayedEmote) {
        displayedEmote = emote;
        _sendEmoteToDevice();
      }
      displayedEmote ??= _emoteListener.ranking.first.key;
    } else {
      displayedEmote = null;
    }
  }

  StreamController<Emote> emotesToMinifyAndSend = StreamController();
  StreamSubscription<Emote>? _subscription;

  void startMagickService() {
    _subscription ??= emotesToMinifyAndSend.stream.distinct().listen((emote) async {
      // check if needs minifying
      // if yes then run process
      // then send the emote
      try {
        String emoteCachePath = _cacheServer.emoteCachePath!;
        String tmpCachePath = _cacheServer.tmpCachePath!;
        String emoteFileName = Emote.emoteFileName(emote, _appConfig.size);
        String emoteFilePath = "$emoteCachePath\\$emoteFileName.gif";
        bool emoteExists = emotesFilePaths.contains(emoteFilePath);
        // then send request to devices api
        if (!emoteExists) {
          int size = _appConfig.size == PixooSize.p32 ? 32 : 64;
          // download image
          String? newEmoteFilePath = await TEmotesAPI.downloadFile(
            emote.urls.last.url,
            "$tmpCachePath\\$emoteFileName", //extension is added after download
          );
          if (newEmoteFilePath != null) {
            // run minifying process

            // String cmd =
            //     "magick \"$newEmoteFilePath\" -coalesce gif:- | magick - -resize ${size}x$size^ -gravity Center -crop ${size}x$size+0+0 +repage \"${newEmoteFilePath.replaceRange(newEmoteFilePath.lastIndexOf("."), null, ".gif")}\"";
            String tmpFile = "$tmpCachePath\\$emoteFileName.tmp.gif";
            bool isOk = await run('''
              magick "$newEmoteFilePath" -coalesce "$tmpFile"
              magick "$tmpFile" -resize ${size}x$size^ -gravity Center -crop ${size}x$size+0+0 +repage "$emoteFilePath"
            ''').then((result) {
              for (var cmdResult in result) {
                bool didFail = false;
                if (cmdResult.stderr is String) {
                  if (cmdResult.stderr.isNotEmpty) {
                    print(cmdResult.stderr);
                    didFail = true;
                  }
                } else {
                  for (var error in cmdResult.stderr as List) {
                    print(error);
                    didFail = true;
                  }
                }
                if (didFail) return false;
              }
              return true;
            }).catchError((error) {
              stdout.write(error);
              return false;
            });
            if (isOk) {
              print("${emote.code} prepared. ( $emoteFilePath )");
              // all good, send request to pixoo with path to emote gif
              CacheServer().emotesToSend.sink.add("$emoteFileName.gif");
            } else {
              print("${emote.code} NOT prepared");
            }
            // clear stuff
            File original = File(newEmoteFilePath);
            File tmpCoalesce = File(tmpFile);
            if (original.existsSync()) original.deleteSync();
            if (tmpCoalesce.existsSync()) tmpCoalesce.deleteSync();
          }
        }
      } catch (e) {
        if (kDebugMode) {
          print(e);
        }
      }
    });
  }

  Future<void> _sendEmoteToDevice() async {
    if (displayedEmote != null) {
      emotesToMinifyAndSend.sink.add(displayedEmote!);
    }
  }
}
