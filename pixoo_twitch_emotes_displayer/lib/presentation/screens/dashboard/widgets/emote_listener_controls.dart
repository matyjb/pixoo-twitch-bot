import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/chat_listener_bloc/chat_listener_bloc.dart';

class EmoteListenerControls extends StatelessWidget {
  const EmoteListenerControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9999),
        color: Theme.of(context).cardColor,
      ),
      child: BlocBuilder<ChatListenerBloc, ChatListenerState>(
        builder: (context, state) => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.emoji_emotions_outlined,
              color: state.map(
                initial: (_) => Colors.grey,
                running: (_) => Colors.green,
                stopped: (_) => Colors.red,
              ),
            ),
            state.map(
              initial: (_) => IconButton.filled(
                onPressed: () {},
                icon: const Icon(Icons.play_arrow_rounded),
                tooltip: "Start emote listener",
              ),
              running: (_) => IconButton.filled(
                onPressed: () {},
                icon: const Icon(Icons.stop_rounded),
                tooltip: "Stop emote listener",
              ),
              stopped: (_) => IconButton.filled(
                onPressed: () {},
                icon: const Icon(Icons.play_arrow_rounded),
                tooltip: "Start emote listener",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
