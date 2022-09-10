import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/models/twitch_msg/twitch_msg.dart';
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

  _EmoteListenerBase() : super() {
    _setupSocket();
  }

  @observable
  EmoteListenerStatus status = EmoteListenerStatus.stopped;

  void _setupSocket() {
    socket.stream.listen(
      (message) {
        if (kDebugMode) {
          print(message);
        }
        TwitchMessage parsedMsg = TwitchMessage.fromLine(message);
        // TODO: scan for emotes, add to the list and map
      },
      onError: (error) {
        if (kDebugMode) {
          print(error);
        }
        _changeStatus(EmoteListenerStatus.error);
      },
      onDone: () => _changeStatus(EmoteListenerStatus.stopped),
    );
  }

  @action
  void _changeStatus(EmoteListenerStatus newStatus) {
    status = newStatus;
  }

  void connect() {
    _changeStatus(EmoteListenerStatus.running);
    if (socket.closeCode != null) {
      if (kDebugMode) {
        print("rebuild socket");
      }
      socket = buildSocket();
      _setupSocket();
    }

    socket.sink.add("CAP REQ :twitch.tv/membership");
    socket.sink.add("PASS oauth:$oauthKey");
    socket.sink.add("NICK $botName");
    socket.sink.add("JOIN #${AppConfig().channelName}");
    // TODO: download emote list (bttv and 7tv)
  }

  void close() {
    socket.sink
        .close()
        .then((value) => _changeStatus(EmoteListenerStatus.stopped));
    // socket.innerWebSocket
    //     ?.close()
    //     .then((value) => _changeStatus(EmoteListenerStatus.stopped));
  }
}
