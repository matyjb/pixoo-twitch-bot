import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/pixoo_adapter_bloc/pixoo_adapter_bloc.dart';

class PixooAdapterControls extends StatelessWidget {
  const PixooAdapterControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9999),
        color: Theme.of(context).highlightColor,
      ),
      child: BlocBuilder<PixooAdapterBloc, PixooAdapterState>(
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
              initial: (_) => IconButton(
                onPressed: ()=>context.read<PixooAdapterBloc>().add(const PixooAdapterEvent.start()),
                icon: const Icon(Icons.play_arrow_rounded),
                tooltip: "Start pixoo adapter",
              ),
              running: (_) => IconButton(
                onPressed: ()=>context.read<PixooAdapterBloc>().add(const PixooAdapterEvent.stop()),
                icon: const Icon(Icons.stop_rounded),
                tooltip: "Stop pixoo adapter",
              ),
              stopped: (_) => IconButton(
                onPressed: ()=>context.read<PixooAdapterBloc>().add(const PixooAdapterEvent.start()),
                icon: const Icon(Icons.play_arrow_rounded),
                tooltip: "Start pixoo adapter",
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
