import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/store/channel_resources.dart';
import 'package:pixoo_twitch_emotes_displayer/store/user_settings.dart';
import 'package:web_socket_channel/io.dart';

import '../models/twitch_msg.dart';

part '../generated/chat_emotes_listener.g.dart';

IOWebSocketChannel buildSocket() => IOWebSocketChannel.connect(
      Uri.parse("wss://irc-ws.chat.twitch.tv:443"),
      headers: {
        'Upgrade': 'websocket',
        'Connection': 'Upgrade',
      },
    );

enum ChatEmotesListenerStatus { stopped, joining, joined }

class ChatEmotesListener extends _ChatEmotesListenerBase
    with _$ChatEmotesListener {
  static ChatEmotesListener instance = ChatEmotesListener._internal();
  ChatEmotesListener._internal();

  IOWebSocketChannel socket = buildSocket();
  StreamSubscription<dynamic>? _socketSub;

  Future connect(String channelName) async {
    disconnect();
    socket = buildSocket();
    _setupSocket();

    socket.sink.add("CAP REQ :twitch.tv/membership");
    socket.sink.add("PASS oauth:${UserSettings.instance.twitchApiKey}");
    socket.sink.add("NICK pixoo_displayer");
    socket.sink.add("JOIN #$channelName");
    setStatus(ChatEmotesListenerStatus.joining);
    await ChannelResources.instance.getEmotes(channelName);
  }

  _setupSocket() {
    _socketSub = socket.stream.listen(
      _parseMessage,
      // onError: (error) {
      //   if (kDebugMode) {
      //     print(error);
      //   }
      //   _changeStatus(EmoteListenerStatus.error);
      // },
      // onDone: () => _changeStatus(EmoteListenerStatus.stopped),
    );
  }

  void _parseMessage(dynamic message) {
    if (kDebugMode) {
      print(message);
    }
    var messageStr = message as String;
    if (messageStr.startsWith("PING")) {
      socket.sink.add(messageStr.replaceFirst("PING", "PONG"));
      return;
    }

    if (messageStr.contains(" JOIN ")) {
      setStatus(ChatEmotesListenerStatus.joined);
    }

    TwitchMessage parsedMsg = TwitchMessage.fromLine(messageStr);
    if (kDebugMode && parsedMsg.type == MsgType.msg) {
      // ignore: avoid_print
      // print(parsedMsg);
    }
    var channelResources = ChannelResources.instance;

    if (parsedMsg.type == MsgType.msg) {
      for (var e in channelResources.emotes.keys) {
        if (parsedMsg.content.startsWith("$e ") ||
            parsedMsg.content.contains(" $e ") ||
            parsedMsg.content.endsWith(" $e") ||
            parsedMsg.content == e) {
          channelResources.reportEmote(channelResources.emotes[e]!);
        }
      }
    }
  }

  disconnect() {
    _socketSub?.cancel();
    setStatus(ChatEmotesListenerStatus.stopped);
    socket.sink.add("LEAVE"); // with channelName?
    // socket.innerWebSocket?.close();
  }
}

abstract class _ChatEmotesListenerBase with Store {
  @observable
  ChatEmotesListenerStatus status = ChatEmotesListenerStatus.stopped;
  @action
  setStatus(ChatEmotesListenerStatus value) => status = value;
}
