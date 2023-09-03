import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/chat_listener_bloc/chat_listener_bloc.dart';

class EmoteListenerControls extends StatelessWidget {
  const EmoteListenerControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9999),
        color: Theme.of(context).highlightColor,
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
                changingStatus: (_) => Colors.yellow,
                stopped: (_) => Colors.red,
              ),
            ),
            state.map(
              initial: (_) => IconButton(
                onPressed: () {},
                icon: const Icon(Icons.play_arrow_rounded),
                tooltip: "Start emote listener",
              ),
              running: (_) => IconButton(
                onPressed: () {},
                icon: const Icon(Icons.stop_rounded),
                tooltip: "Stop emote listener",
              ),
              stopped: (_) => IconButton(
                onPressed: () {},
                icon: const Icon(Icons.play_arrow_rounded),
                tooltip: "Start emote listener",
              ),
              changingStatus: (_) => const IconButton(
                onPressed: null,
                icon: Icon(Icons.refresh),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
