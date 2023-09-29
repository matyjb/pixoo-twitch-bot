import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/temotesApi/temotes_user.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/ttv_user.dart';
import 'package:pixoo_twitch_emotes_displayer/data/repositories/temotes_repo.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/app_resources_cubit/app_resources_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/chat_listener_bloc/chat_listener_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/emote_cache_cubit/emote_cache_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/pixoo_adapter_bloc/pixoo_adapter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/settings_cubit/settings_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/presentation/screens/dashboard/widgets/emote_listener_controls.dart';
import 'package:pixoo_twitch_emotes_displayer/presentation/screens/dashboard/widgets/logs_list_view.dart';
import 'package:pixoo_twitch_emotes_displayer/presentation/screens/dashboard/widgets/pixoo_device_adapter_controls.dart';
import 'package:pixoo_twitch_emotes_displayer/presentation/screens/dashboard/widgets/pixoo_emote_card.dart';
import 'package:pixoo_twitch_emotes_displayer/presentation/screens/dashboard/widgets/ranking_row.dart';
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
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, settings) {
        return FutureBuilder<TEmotesUser>(
            future: TEmotesRepo.getUser(settings.channelName ?? "forsen"),
            builder: (context, snapshot) {
              if (snapshot.hasError || !snapshot.hasData) {
                return Scaffold(
                  appBar: AppBar(),
                  body: const Center(child: CircularProgressIndicator()),
                );
              }
              final user = TtvUser.fromTEmotes(snapshot.data!);
              return MultiBlocProvider(
                providers: [
                  BlocProvider.value(
                    value: _pixooAdapter..add(const PixooAdapterEvent.start()),
                  ),
                  BlocProvider.value(
                    value: _emoteCache,
                  ),
                  BlocProvider(
                    create: (context) => ChatListenerBloc(_emoteCache, _pixooAdapter, user)
                      ..add(const ChatListenerEvent.start()),
                  ),
                ],
                child: Scaffold(
                  appBar: AppBar(
                    title: Text(user.displayName),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(4),
                        child: Hero(
                          tag: "channel_avatar",
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 2,
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(user.avatarUrl),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  body: BlocBuilder<ChatListenerBloc, ChatListenerState>(
                    builder: (context, state) => state.map(
                      running: (chatListenerRunning) => Column(
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
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
                                                ? PixooEmoteCard(
                                                    emote: pixooAdapterStateRunning.currentEmote!)
                                                : const Placeholder(),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                          ConstrainedBox(
                            constraints: const BoxConstraints(minHeight: 100),
                            child: const RankingRow(amount: 6),
                          ),
                          const Divider(),
                          const Expanded(child: LogsListView()),
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
            });
      },
    );
  }

  @override
  void dispose() {
    _pixooAdapter.close();
    _emoteCache.close();
    super.dispose();
  }
}
