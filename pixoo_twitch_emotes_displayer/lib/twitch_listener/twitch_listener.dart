import 'package:web_socket_channel/io.dart';

import '../models/twitch_msg/twitch_msg.dart';

const oauthKey = "YOUR_TWITCH_API_KEY_HERE";
const botName = "pixoo_displayer";

TwitchMessage parse_msg(String msg) {
  throw "not implemented";
}

IOWebSocketChannel startListeningChat(String channelName) {
  var channel = IOWebSocketChannel.connect(Uri.parse("wss://irc-ws.chat.twitch.tv:443"), headers: {
    'Upgrade': 'websocket',
    'Connection': 'Upgrade',
  });
  channel.stream.listen(
    (message) {
      print(message);
      // channel.sink.add('received!');
      // channel.sink.close(status.goingAway);
    },
    onError: (error) => print(error),
    onDone: () {
      print("Connection closed");
    },
  );
  channel.sink.add("CAP REQ :twitch.tv/membership");
  channel.sink.add("PASS oauth:$oauthKey");
  channel.sink.add("NICK $botName");
  channel.sink.add("JOIN #$channelName");

  return channel;
}