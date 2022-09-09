import 'package:mobx/mobx.dart';
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

abstract class _EmoteListenerBase with Store {
  var socket = IOWebSocketChannel.connect(
    Uri.parse("wss://irc-ws.chat.twitch.tv:443"),
    headers: {
      'Upgrade': 'websocket',
      'Connection': 'Upgrade',
    },
  );

  @observable
  EmoteListenerStatus status = EmoteListenerStatus.stopped;

  Future<void> init() async {
    socket.stream.listen(
      (message) {
        print(message);
      },
      onError: (error) => _changeStatus(EmoteListenerStatus.error),
      onDone: () => _changeStatus(EmoteListenerStatus.stopped),
    );
  }

  @action
  void _changeStatus(EmoteListenerStatus newStatus) {
    status = newStatus;
  }

  @action
  void connect() {
    _changeStatus(EmoteListenerStatus.running);
    socket.sink.add("CAP REQ :twitch.tv/membership");
    socket.sink.add("PASS oauth:$oauthKey");
    socket.sink.add("NICK $botName");
    socket.sink.add("JOIN #${AppConfig().channelName}");
  }
}
