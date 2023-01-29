import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/store/user_settings.dart';

class EmoteActivationSlider extends StatelessWidget {
  EmoteActivationSlider({super.key});

  final _userSettings = UserSettings.instance;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            "Ilość emotek do aktywacji",
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        Observer(
          builder: (context) {
            return Slider(
              label: _userSettings.emoteActivationThreshold.toString(),
              value: _userSettings.emoteActivationThreshold.toDouble(),
              onChanged: (value) =>
                  _userSettings.setEmoteActivationThreshold(value.toInt()),
              divisions: 4,
              min: 1,
              max: 5,
            );
          },
        ),
      ],
    );
  }
}
