import 'package:flutter/material.dart';
import 'package:pixoo_twitch_emotes_displayer/store/user_settings.dart';

class TwitchApiKeyTextField extends StatelessWidget {
  TwitchApiKeyTextField({super.key});

  final UserSettings _userSettings = UserSettings.instance;
  final TextEditingController textarea = TextEditingController()
    ..text = UserSettings.instance.twitchApiKey ?? "";

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textarea,
      onChanged: _userSettings.setApiKey,
    );
  }
}
