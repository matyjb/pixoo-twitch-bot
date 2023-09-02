import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/app_resources_cubit/app_resources_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/chat_listener_bloc/chat_listener_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/emote_cache_cubit/emote_cache_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/pixoo_adapter_bloc/pixoo_adapter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/settings_cubit/settings_cubit.dart';
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
            PixooAdapterControls(),
          ],
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
