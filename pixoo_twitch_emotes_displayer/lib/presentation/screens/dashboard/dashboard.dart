import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/data/providers/t_emotes_api.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/app_resources_cubit/app_resources_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/chat_listener_bloc/chat_listener_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/emote_cache_cubit/emote_cache_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/pixoo_adapter_bloc/pixoo_adapter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/settings_cubit/settings_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/presentation/screens/dashboard/widgets/emote_card.dart';
import 'package:pixoo_twitch_emotes_displayer/presentation/screens/dashboard/widgets/emote_listener_controls.dart';
import 'package:pixoo_twitch_emotes_displayer/presentation/screens/dashboard/widgets/pixoo_device_adapter_controls.dart';
import 'package:pixoo_twitch_emotes_displayer/presentation/screens/dashboard/widgets/refresh_emotes_button.dart';

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
          title: BlocBuilder<SettingsCubit, SettingsState>(
            builder: (context, settings) => Text(settings.channelName ?? ""),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(4),
              child: Hero(
                tag: "channel_avatar",
                child: BlocBuilder<SettingsCubit, SettingsState>(
                  builder: (context, settings) {
                    return FutureBuilder(
                        future: TEmotesApi.getUser(settings.channelName ?? "forsen"),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            final avatar = snapshot.data!.data["avatar"];
                            return Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: 2,
                                ),
                              ),
                              child: CircleAvatar(
                                backgroundImage: avatar != null ? NetworkImage(avatar) : null,
                              ),
                            );
                          } else {
                            return Container();
                          }
                        });
                  },
                ),
              ),
            )
          ],
        ),
        body: BlocBuilder<ChatListenerBloc, ChatListenerState>(
          builder: (context, state) => state.map(
            running: (chatListenerRunning) => Column(
              children: [
                const SizedBox(height: 5,),
                const Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    RefreshEmotesButton(),
                    EmoteListenerControls(),
                    PixooAdapterControls(),
                  ],
                ),
                const Divider(
                  height: 30,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16),
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: BlocBuilder<PixooAdapterBloc, PixooAdapterState>(
                          builder: (context, pixooAdapterState) {
                            return pixooAdapterState.maybeMap(
                              orElse: () => Container(),
                              running: (pixooAdapterStateRunning) =>
                                  pixooAdapterStateRunning.currentEmote != null
                                      ? EmoteCard(emote: pixooAdapterStateRunning.currentEmote!)
                                      : const Placeholder(),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Flexible(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Wrap(
                      spacing: 4,
                      runSpacing: 4,
                      children: chatListenerRunning.emotesRanking
                          .map((e) => SizedBox(
                              height: 70,
                              child: EmoteCard(
                                emote: e,
                                caption: chatListenerRunning.emotesPoints[e].toString(),
                              )))
                          .toList(),
                    ),
                  ),
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
