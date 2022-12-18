import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/models/emote/emote.dart';
import 'package:pixoo_twitch_emotes_displayer/models/emote_history_entry/emote_history_entry.dart';
import 'package:pixoo_twitch_emotes_displayer/models/helpers/pair.dart';
import 'package:pixoo_twitch_emotes_displayer/models/twitch_msg/twitch_msg.dart';
import 'package:pixoo_twitch_emotes_displayer/services/t_emotes_api.dart';
import 'package:pixoo_twitch_emotes_displayer/store/emote_chooser.dart';
// ignore: depend_on_referenced_packages
import 'package:web_socket_channel/io.dart';

import 'app_config.dart';

part 'emote_listener.g.dart';

const oauthKey = "YOUR_TWITCH_API_KEY_HERE";
const botName = "pixoo_displayer";

class EmoteListener extends _EmoteListenerBase with _$EmoteListener {
  static final EmoteListener _singleton = EmoteListener._internal();

  factory EmoteListener() {
    return _singleton;
  }

  EmoteListener._internal();
}

enum EmoteListenerStatus { stopped, running, error }

IOWebSocketChannel buildSocket() => IOWebSocketChannel.connect(
      Uri.parse("wss://irc-ws.chat.twitch.tv:443"),
      headers: {
        'Upgrade': 'websocket',
        'Connection': 'Upgrade',
      },
    );

abstract class _EmoteListenerBase with Store {
  IOWebSocketChannel socket = buildSocket();
  static const int maxHistorySize = 200;

  @observable
  ObservableList<EmoteHistoryEntry> emoteHistory = ObservableList.of([]);

  @observable
  Map<String, Emote> emotes = {};

  @observable
  EmoteListenerStatus status = EmoteListenerStatus.stopped;

  @computed
  List<MapEntry<Emote, Pair<DateTime, int>>> get ranking {
    var rank = emoteHistory.fold(<Emote, Pair<DateTime, int>>{},
        (previousValue, element) {
      Map<Emote, Pair<DateTime, int>> next =
          previousValue as Map<Emote, Pair<DateTime, int>>;
      if (next[element.emote] == null) {
        next[element.emote] = Pair(element.time, 1);
      } else {
        next[element.emote]!.v2 += 1;
      }
      return next;
    });
    var rankEntries = rank.entries.toList();
    rankEntries.sort(
      (a, b) => b.value.v1.compareTo(a.value.v1),
    );
    rankEntries.sort((a, b) => b.value.v2.compareTo(a.value.v2));

    return rankEntries;
  }

  _EmoteListenerBase() : super() {
    _setupSocket();
  }

  void _parseMessage(dynamic message) {
    print(message);
    var messageStr = message as String;
    if (messageStr.startsWith("PING")) {
      socket.sink.add(messageStr.replaceFirst("PING", "PONG"));
      return;
    }
    TwitchMessage parsedMsg = TwitchMessage.fromLine(messageStr);
    if (kDebugMode && parsedMsg.type == MsgType.msg) {
      // ignore: avoid_print
      // print(parsedMsg);
    }
    if (parsedMsg.type == MsgType.msg) {
      for (var e in emotes.keys) {
        if (parsedMsg.content.startsWith("$e ") ||
            parsedMsg.content.contains(" $e ") ||
            parsedMsg.content.endsWith(" $e") ||
            parsedMsg.content == e) {
          _reportEmote(emotes[e]!);
        }
      }
    }
  }

  void _setupSocket() {
    socket.stream.listen(
      _parseMessage,
      onError: (error) {
        if (kDebugMode) {
          print(error);
        }
        _changeStatus(EmoteListenerStatus.error);
      },
      // onDone: () => _changeStatus(EmoteListenerStatus.stopped),
    );
  }

  @action
  void _reportEmote(Emote emote) {
    emoteHistory.insert(
        0, EmoteHistoryEntry(emote: emote, time: DateTime.now()));
    filterEmoteHistory();
    EmoteChooser().refreshDisplayedEmote();
  }

  @action
  void filterEmoteHistory() {
    if (emoteHistory.length > maxHistorySize) {
      emoteHistory = emoteHistory.sublist(0, maxHistorySize).asObservable();
    }
    var now = DateTime.now();
    emoteHistory = emoteHistory
        .where((element) =>
            now.difference(element.time).inSeconds <
            AppConfig().maxEmoteHistoryEntryLifetimeSec)
        .toList()
        .asObservable();
  }

  @action
  void _clearEmoteHistory() {
    emoteHistory.clear();
  }

  @action
  void _changeStatus(EmoteListenerStatus newStatus) {
    if (kDebugMode) {
      print('$status -> $newStatus');
    }
    status = newStatus;
  }

  @action
  Future<void> getEmotes(String channelName) async {
    List<Emote> globalEmotes = await TEmotesAPI.getEmotesGlobal();
    emotes.clear();
    emoteHistory.clear();
    for (var element in globalEmotes) {
      emotes[element.code] = element;
    }
    List<Emote> channelEmotes =
        await TEmotesAPI.getEmotesForChannel(channelName);
    for (var element in channelEmotes) {
      emotes[element.code] = element;
    }
  }

  void connect() {
    close();
    socket = buildSocket();
    _setupSocket();
    _changeStatus(EmoteListenerStatus.running);

    socket.sink.add("CAP REQ :twitch.tv/membership");
    socket.sink.add("PASS oauth:$oauthKey");
    socket.sink.add("NICK $botName");
    socket.sink.add("JOIN #${AppConfig().channelName}");
    getEmotes(AppConfig().channelName);
  }

  void close() {
    try {
      socket.sink.close();
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    _changeStatus(EmoteListenerStatus.stopped);
    _clearEmoteHistory();
    EmoteChooser().refreshDisplayedEmote();
  }
}
