import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/chat_listener_bloc/chat_listener_bloc.dart';

class RefreshEmotesButton extends StatelessWidget {
  const RefreshEmotesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      icon: const Icon(Icons.refresh_rounded),
      onPressed: () => context.read<ChatListenerBloc>().add(
            const ChatListenerEvent.refreshChannelEmotes(),
          ),
      tooltip: "refresh emotes list on the channel",
    );
  }
}
