import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/store/user_settings.dart';

class EmoteTTLSlider extends StatelessWidget {
  EmoteTTLSlider({super.key});

  final _userSettings = UserSettings.instance;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            "Emote ttl",
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        Observer(
          builder: (context) {
            return Slider(
              label: _userSettings.emoteTTL.toString(),
              value: _userSettings.emoteTTL.toDouble(),
              onChanged: (value) => _userSettings.setEmoteTTL(value.toInt()),
              divisions: 59,
              min: 1,
              max: 60,
            );
          },
        )
      ],
    );
  }
}
