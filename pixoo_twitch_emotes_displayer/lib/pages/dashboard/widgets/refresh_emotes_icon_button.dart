import 'package:flutter/material.dart';
import 'package:pixoo_twitch_emotes_displayer/store/channel_resources.dart';
import 'package:pixoo_twitch_emotes_displayer/store/user_settings.dart';

class RefreshEmotesIconButton extends StatelessWidget {
  RefreshEmotesIconButton({super.key});

  final _userSettings = UserSettings.instance;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.refresh_rounded),
      onPressed: () =>
          ChannelResources.instance.getEmotes(_userSettings.channelName!),
    );
  }
}
