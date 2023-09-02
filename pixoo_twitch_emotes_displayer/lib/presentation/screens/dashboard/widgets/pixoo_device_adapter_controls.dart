import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/chat_listener_bloc/chat_listener_bloc.dart';

class PixooAdapterControls extends StatelessWidget {
  const PixooAdapterControls({super.key});

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
              Icons.screenshot_monitor_rounded,
              color: state.map(
                initial: (_) => Colors.grey,
                running: (_) => Colors.green,
                stopped: (_) => Colors.red,
                changingStatus: (_) => Colors.yellow,
              ),
            ),
            state.map(
              initial: (_) => IconButton.filled(
                onPressed: () {},
                icon: const Icon(Icons.play_arrow_rounded),
                tooltip: "Start pixoo adapter",
              ),
              running: (_) => IconButton.filled(
                onPressed: () {},
                icon: const Icon(Icons.stop_rounded),
                tooltip: "Stop pixoo adapter",
              ),
              stopped: (_) => IconButton.filled(
                onPressed: () {},
                icon: const Icon(Icons.play_arrow_rounded),
                tooltip: "Start pixoo adapter",
              ),
              changingStatus: (_) => const IconButton.filled(
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
