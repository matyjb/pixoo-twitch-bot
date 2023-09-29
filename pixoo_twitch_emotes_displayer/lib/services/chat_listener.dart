import 'dart:async';

import 'package:pixoo_twitch_emotes_displayer/data/models/log_entry.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/logs_cubit/logs_cubit.dart';
import 'package:web_socket_channel/io.dart';

_writeToLog(LogEntryType type, String message) =>
    writeToLog(type, "Chat listener service", message);

IOWebSocketChannel buildSocket() => IOWebSocketChannel.connect(
      Uri.parse("wss://irc-ws.chat.twitch.tv:443"),
      headers: {
        'Upgrade': 'websocket',
        'Connection': 'Upgrade',
      },
    );

class ChatListener {
  IOWebSocketChannel socket = buildSocket();
  StreamSubscription<dynamic>? _pingpong;
  final _streamController = StreamController<String>();

  Stream<String> get msgStream => _streamController.stream;

  Future connect(String channel, String ttvApiKey) {
    _disconnect();
    _writeToLog(LogEntryType.action, "Connecting to chat of $channel");
    socket = buildSocket();

    _pingpong = socket.stream.listen((message) {
      final msg = message as String;
      if (msg.startsWith("PING")) {
        socket.sink.add(msg.replaceFirst("PING", "PONG"));
      } else {
        _streamController.add(message);
      }
    });

    socket.sink.add("CAP REQ :twitch.tv/membership");
    socket.sink.add("PASS $ttvApiKey");
    socket.sink.add("NICK pixoo_displayer");
    socket.sink.add("JOIN #$channel");
    return socket.ready;
  }

  Future _disconnect() async {
    socket.sink.add("LEAVE"); // with channelName?
    await _pingpong?.cancel().then(
          (value) => _writeToLog(LogEntryType.info, "Disconnected from the chat"),
        );
  }

  disconnect() {
    _writeToLog(LogEntryType.action, "Disconnecting from the chat...");
    _disconnect();
  }
}
