import 'package:flutter/material.dart';
import 'package:pixoo_twitch_emotes_displayer/store/user_settings.dart';

class ChannelNameTextField extends StatelessWidget {
  ChannelNameTextField({super.key});

  final UserSettings _userSettings = UserSettings.instance;
  final TextEditingController textarea = TextEditingController()
    ..text = UserSettings.instance.channelName ?? "";

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textarea,
      onChanged: _userSettings.setChannelName,
    );
  }
}
