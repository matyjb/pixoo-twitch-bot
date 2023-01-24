import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/helpers/pair.dart';
import 'package:pixoo_twitch_emotes_displayer/models/emote.dart';
import 'package:pixoo_twitch_emotes_displayer/models/pixoo_device.dart';
import 'package:pixoo_twitch_emotes_displayer/services/emote_host_server.dart';
import 'package:pixoo_twitch_emotes_displayer/services/imagick_scripts.dart';
import 'package:pixoo_twitch_emotes_displayer/services/pixoo_api.dart';
import 'package:pixoo_twitch_emotes_displayer/services/t_emotes_api.dart';
import 'package:pixoo_twitch_emotes_displayer/store/app_resources.dart';
import 'package:pixoo_twitch_emotes_displayer/store/channel_resources.dart';
import 'package:pixoo_twitch_emotes_displayer/store/user_settings.dart';
import 'package:process_run/shell_run.dart';

part '../generated/emotes_manager.g.dart';

class EmotesManager extends _EmoteManagerBase with _$EmotesManager {
  static final EmotesManager instance = EmotesManager._internal();

  StreamController<Emote> prepAndSendEmoteStream = StreamController<Emote>();
  late final StreamSubscription _subscription;

  EmotesManager._internal() {
    _subscription =
        prepAndSendEmoteStream.stream.distinct().listen(_handleEmoteSending);

    ChannelResources.instance.emoteHistory.observe((_) {
      final rank = ChannelResources.instance.emoteHistory
          .fold<Map<Emote, Pair<DateTime, int>>>(<Emote, Pair<DateTime, int>>{},
              (previousValue, element) {
        final Map<Emote, Pair<DateTime, int>> next = previousValue;
        if (next[element.emote] == null) {
          next[element.emote] = Pair(element.time, 1);
        } else {
          next[element.emote]!.v2 += 1;
        }
        return next;
      });
      final rankEntries = rank.entries.toList();
      rankEntries.sort(
        (a, b) => b.value.v1.compareTo(a.value.v1),
      );
      rankEntries.sort((a, b) => b.value.v2.compareTo(a.value.v2));

      _setRanking(rankEntries);
      if (_refreshDisplayedEmote() && rankEntries.isNotEmpty) {
        prepAndSendEmoteStream.sink.add(rankEntries.first.key);
      }
    });
  }

  void _handleEmoteSending(Emote emote) {
    final AppResources appResources = AppResources.instance;
    final String emoteFileName = Emote.emoteFileName(emote, PixooSize.p64);
    final String emoteFilePath =
        "${appResources.documentsPath}\\$emoteFileName.gif";

    try {
      final bool emoteExists = appResources.emotesPaths.contains(emoteFilePath);
      final bool isBeingPrepared = emotesPrepared.contains(emote);

      // delay for the hosting server to get their s together (404 problem)
      if (emoteExists) {
        if (displayedEmote == emote) _sendEmote(emoteFileName);
      } else if (isBeingPrepared) {
        // do nothing
      } else {
        _prepEmote(emote).then((_) {
          if (displayedEmote == emote) {
            Future.delayed(
              const Duration(milliseconds: 200),
              () => _sendEmote(emoteFileName),
            );
          }
        });
      }
    } catch (e) {
      if (kDebugMode) print(e);
    }
  }

  Future _prepEmote(Emote emote) async {
    // > cache what emotes are being prepared
    // > > if it was in the list, dont prepare emote
    if (!emotesPrepared.contains(emote)) {
      emotesFailed.remove(emote);
      emotesPrepared.add(emote);

      final AppResources appResources = AppResources.instance;
      final String emoteFileName = Emote.emoteFileName(emote, PixooSize.p64);
      final String emoteFilePath =
          "${appResources.documentsPath}\\$emoteFileName.gif";

      // 1. download emote
      // 2. run imagick on it

      await TEmotesAPI.downloadFile(
        emote.urls.last.url,
        "${appResources.tmpCachePath}\\$emoteFileName", //extension is added after download
      ).then((String newEmoteFilePath) async {
        final String tmpFile =
            "${appResources.tmpCachePath}\\$emoteFileName.tmp.gif";
        final List<String> scriptCmds =
            await ImagickScripts.getEmotePrepCommands(
          newEmoteFilePath,
          tmpFile,
          emoteFilePath,
        );
        return run(scriptCmds.join("\n"))
            .then((List<ProcessResult> procResults) {
          final Iterable<ProcessResult> errors = procResults.where((element) {
            final dynamic err = element.stderr;
            return err is String && err.isNotEmpty ||
                err is List && err.isNotEmpty;
          });

          if (errors.isNotEmpty) {
            throw errors.join('\n');
          }
        }).catchError((err) {
          emotesFailed.add(emote);
          // ignore: invalid_return_type_for_catch_error
          return err;
        }).then((err) {
          // clean up temp files
          emotesPrepared.remove(emote);
          final File original = File(newEmoteFilePath);
          final File tmpCoalesce = File(tmpFile);
          if (original.existsSync()) original.deleteSync();
          if (tmpCoalesce.existsSync()) tmpCoalesce.deleteSync();
          if (err != null) {
            throw err;
          }
        });
      });
    }
  }

  Future _sendEmote(String emoteFileName) async {
    final PixooDevice? device = UserSettings.instance.selectedPixooDevice;
    if (device != null) {
      PixooAPI.playGifFile(
        device.DevicePrivateIP,
        "${EmoteHostServer.instance.url}/$emoteFileName.gif",
      );
    }
  }

  void dispose() {
    _subscription.cancel();
  }
}

abstract class _EmoteManagerBase with Store {
  @observable
  List<MapEntry<Emote, Pair<DateTime, int>>> ranking = [];
  @action
  List<MapEntry<Emote, Pair<DateTime, int>>> _setRanking(
    List<MapEntry<Emote, Pair<DateTime, int>>> value,
  ) =>
      ranking = value;

  @observable
  Emote? displayedEmote;
  @action
  bool _refreshDisplayedEmote() {
    final MapEntry<Emote, Pair<DateTime, int>>? candidate =
        ranking.isNotEmpty ? ranking.first : null;
    if (candidate != null &&
        candidate.value.v2 >= UserSettings.instance.emoteActivationThreshold &&
        displayedEmote != candidate.key) {
      displayedEmote = candidate.key;
      return true;
    }
    return false;
  }

  @observable
  ObservableSet<Emote> emotesPrepared = ObservableSet.of({});
  @action
  ObservableSet<Emote> setPreparedEmotes(Set<Emote> value) =>
      emotesPrepared = value.asObservable();

  @observable
  ObservableSet<Emote> emotesFailed = ObservableSet.of({});
  @action
  ObservableSet<Emote> setEmotesFailed(Set<Emote> value) =>
      emotesFailed = value.asObservable();
}
