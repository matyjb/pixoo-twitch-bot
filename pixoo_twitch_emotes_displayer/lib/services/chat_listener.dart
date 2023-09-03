import 'dart:async';

import 'package:web_socket_channel/io.dart';

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
  final _streamController= StreamController<String>();

  Stream<String> get msgStream => _streamController.stream;

  Future connect(String channel, String ttvApiKey) {
    disconnect();
    socket = buildSocket();

    _pingpong = socket.stream.listen((message) {
      final msg = message as String;
      if (msg.startsWith("PING")) {
        socket.sink.add(msg.replaceFirst("PING", "PONG"));
      }else{
        _streamController.add(message);
      }

    });

    socket.sink.add("CAP REQ :twitch.tv/membership");
    socket.sink.add("PASS $ttvApiKey");
    socket.sink.add("NICK pixoo_displayer");
    socket.sink.add("JOIN #$channel");
    return socket.ready;
  }

  disconnect() {
    _pingpong?.cancel();
    socket.sink.add("LEAVE"); // with channelName?
    // socket.innerWebSocket?.close();
  }
}
