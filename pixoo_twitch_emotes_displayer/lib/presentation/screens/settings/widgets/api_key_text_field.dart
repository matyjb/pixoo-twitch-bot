import 'package:flutter/material.dart';
import 'package:pixoo_twitch_emotes_displayer/helpers/twitch_api_key_url_gen.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/settings_cubit/settings_cubit.dart';
import 'package:url_launcher/url_launcher.dart';

class ApiKeyTextField extends StatefulWidget {
  final bool readOnly;
  const ApiKeyTextField({super.key, this.readOnly = false});

  @override
  State<ApiKeyTextField> createState() => _ApiKeyTextFieldState();
}

class _ApiKeyTextFieldState extends State<ApiKeyTextField> {
  final _apiKeyController = TextEditingController()..text = SettingsCubit.i.state.apiKey ?? "";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: TextField(
            obscureText: true,
            controller: _apiKeyController,
            onChanged: SettingsCubit.i.setApiKey,
            decoration: const InputDecoration(
              // border: OutlineInputBorder(),
              hintText: "oauth:XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
              labelText: 'Twitch API key',
            ),
            readOnly: widget.readOnly,
            enableIMEPersonalizedLearning: false,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton.filled(
            icon: const Icon(Icons.u_turn_right_outlined),
            tooltip: 'Get the API key',
            onPressed: () => launchUrl(Uri.parse(getTtvOAuthKeyUrl())),
          ),
        ),
        // help icon
      ],
    );
  }
}
