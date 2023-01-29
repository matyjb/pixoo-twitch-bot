import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/services/chat_emotes_listener.dart';

const Map<ChatEmotesListenerStatus, Color> statusToColorMap = {
  ChatEmotesListenerStatus.stopped: Colors.grey,
  ChatEmotesListenerStatus.joining: Colors.blue,
  ChatEmotesListenerStatus.joined: Colors.green,
};

class ChatEmotesListenerStatusIndicator extends StatelessWidget {
  static const String heroTag = "ChatEmotesListenerStatusIndicator";
  ChatEmotesListenerStatusIndicator({super.key});

  final ChatEmotesListener _chatEmotesListener = ChatEmotesListener.instance;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Icon(
        Icons.circle,
        color: statusToColorMap[_chatEmotesListener.status],
      ),
    );
  }
}
