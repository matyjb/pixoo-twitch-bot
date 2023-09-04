import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/app_resources_cubit/app_resources_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/chat_listener_bloc/chat_listener_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/emote_cache_cubit/emote_cache_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/pixoo_adapter_bloc/pixoo_adapter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/settings_cubit/settings_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/presentation/screens/dashboard/widgets/emote_card.dart';
import 'package:pixoo_twitch_emotes_displayer/presentation/screens/dashboard/widgets/emote_listener_controls.dart';
import 'package:pixoo_twitch_emotes_displayer/presentation/screens/dashboard/widgets/pixoo_device_adapter_controls.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _pixooAdapter = PixooAdapterBloc(
    AppResourcesCubit.i.loadedState.docsPath,
    SettingsCubit.i.state.selectedNetworkInterface!.addresses.first,
  );
  final _emoteCache = EmoteCacheCubit(
    AppResourcesCubit.i.loadedState.docsPath,
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: _pixooAdapter..add(const PixooAdapterEvent.start()),
        ),
        BlocProvider.value(
          value: _emoteCache,
        ),
        BlocProvider(
          create: (context) =>
              ChatListenerBloc(_emoteCache, _pixooAdapter)..add(const ChatListenerEvent.start()),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
          actions: const [
            EmoteListenerControls(),
            SizedBox(
              width: 10,
            ),
            PixooAdapterControls(),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: BlocBuilder<ChatListenerBloc, ChatListenerState>(
          builder: (context, state) => state.map(
            running: (state) => Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: BlocBuilder<PixooAdapterBloc, PixooAdapterState>(
                        builder: (context, state) {
                          return state.maybeMap(
                            orElse: () => Container(),
                            running: (state) => state.currentEmote != null
                                ? EmoteCard(emote: state.currentEmote!)
                                : const Placeholder(),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Wrap(
                  spacing: 4,
                  runSpacing: 4,
                  children: state.emotesRanking
                      .map((e) => SizedBox(height: 70, child: EmoteCard(emote: e)))
                      .toList(),
                )
              ],
            ),
            initial: (_) => const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.close_rounded), Text("Listener is stopped.")],
              ),
            ),
            stopped: (_) => const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.close_rounded), Text("Listener is stopped.")],
              ),
            ),
            changingStatus: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pixooAdapter.close();
    _emoteCache.close();
    super.dispose();
  }
}
