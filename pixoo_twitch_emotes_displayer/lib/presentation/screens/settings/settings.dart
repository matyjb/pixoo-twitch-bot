import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/settings_cubit/settings_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/presentation/screens/settings/widgets/api_key_text_field.dart';
import 'package:pixoo_twitch_emotes_displayer/presentation/screens/settings/widgets/buffer_size_slider.dart';
import 'package:pixoo_twitch_emotes_displayer/presentation/screens/settings/widgets/channel_name_text_field.dart';
import 'package:pixoo_twitch_emotes_displayer/presentation/screens/settings/widgets/net_interface_dropdown.dart';
import 'package:pixoo_twitch_emotes_displayer/presentation/screens/settings/widgets/pixoo_device_dropdown.dart';
import 'package:pixoo_twitch_emotes_displayer/router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(32.0),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child:
                  //       Image.network("https://cdn.7tv.app/emote/6252d81b41d1240ad9e4fff1/4x.webp"),
                  // ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 48,
                        vertical: 32,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const ChannelNameTextField(),
                          const ApiKeyTextField(),
                          const Divider(height: 40),
                          const NetInterfaceDropdown(),
                          const PixooDeviceDropdown(),
                          const BufferSizeSlider(),
                        ]
                            .map((e) => Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                                  child: e,
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: IconButton.filled(
                      onPressed: state.isReady
                          ? () => Navigator.of(context).pushNamed(RouteNames.dashboard)
                          : null,
                      tooltip: state.isReady ? "Run service" : "Fill all of the settings",
                      icon: const Icon(Icons.play_arrow_rounded),
                      iconSize: 50,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
