import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/models/emote.dart';
import 'package:pixoo_twitch_emotes_displayer/models/pixoo_device.dart';
import 'package:pixoo_twitch_emotes_displayer/services/imagick_scripts.dart';
import 'package:pixoo_twitch_emotes_displayer/services/t_emotes_api.dart';
import 'package:pixoo_twitch_emotes_displayer/store/app_config.dart';
import 'package:pixoo_twitch_emotes_displayer/store/cache_server.dart';
import 'package:pixoo_twitch_emotes_displayer/store/emote_listener.dart';
import 'package:process_run/shell_run.dart';

part '../generated/emote_chooser.g.dart';

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
  ObservableList<String> emotesFilePaths = ObservableList.of([]);

  @observable
  ObservableSet<String> currentlyProcessed = ObservableSet.of({});

  @observable
  ObservableSet<String> failedProcessing = ObservableSet.of({});

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
  void addCurrentlyProcessed(String emoteFileName) {
    currentlyProcessed.add(emoteFileName);
  }

  @action
  void removeCurrentlyProcessed(String emoteFileName) {
    currentlyProcessed.remove(emoteFileName);
  }

  @action
  void addFailedProcessing(String emoteFileName) {
    failedProcessing.add(emoteFileName);
  }

  @action
  void removeFailedProcessing(String emoteFileName) {
    failedProcessing.remove(emoteFileName);
  }

  @action
  void setEmotesFiles(List<String> paths) {
    emotesFilePaths = paths.asObservable();
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

  int currentRequestId = 0;
  int reportNewRequest() {
    currentRequestId = ++currentRequestId % 100000;
    return currentRequestId;
  }

  void startMagickService() {
    _subscription ??=
        emotesToMinifyAndSend.stream.distinct().listen((emote) async {
      int thisRequestId = reportNewRequest();
      // check if needs minifying
      // if yes then run process
      // then send the emote
      try {
        String emoteCachePath = _cacheServer.emoteCachePath!;
        String tmpCachePath = _cacheServer.tmpCachePath!;
        String emoteFileName = Emote.emoteFileName(emote, _appConfig.size);
        String emoteFilePath = "$emoteCachePath\\$emoteFileName.gif";
        bool emoteExists = emotesFilePaths.contains(emoteFilePath);

        if (!emoteExists && !currentlyProcessed.contains(emoteFileName)) {
          addCurrentlyProcessed(emoteFileName);
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
            List<String> scriptCmds = await ImagickScripts.getEmotePrepCommands(
              newEmoteFilePath,
              tmpFile,
              emoteFilePath,
              _appConfig.size,
            );
            bool isOk = await run(scriptCmds.join("\n")).then((result) {
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
              // emote processing done
              removeCurrentlyProcessed(emoteFileName);
              removeFailedProcessing(emoteFileName);
            } else {
              print("${emote.code} NOT prepared");
              addFailedProcessing(emoteFileName);
            }
            // clear stuff
            File original = File(newEmoteFilePath);
            File tmpCoalesce = File(tmpFile);
            if (original.existsSync()) original.deleteSync();
            if (tmpCoalesce.existsSync()) tmpCoalesce.deleteSync();
          }
        }
        // emote existed before and is not being prepared
        if (currentRequestId == thisRequestId &&
            displayedEmote != null &&
            Emote.emoteFileName(displayedEmote!, _appConfig.size) ==
                emoteFileName) {
          CacheServer().emotesToSend.sink.add("$emoteFileName.gif");
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
