import 'package:flutter/material.dart';
import 'package:pixoo_twitch_emotes_displayer/pages/app_config/widgets/channel_name_text_field.dart';
import 'package:pixoo_twitch_emotes_displayer/pages/app_config/widgets/network_interfaces_dropdown.dart';
import 'package:pixoo_twitch_emotes_displayer/pages/app_config/widgets/pixoo_devices_dropdown.dart';
import 'package:pixoo_twitch_emotes_displayer/pages/app_config/widgets/twitch_api_key_text_field.dart';
import 'package:pixoo_twitch_emotes_displayer/pages/waiting_for_services/waiting_for_services.dart';
import 'package:pixoo_twitch_emotes_displayer/widgets/service_controller_icon_button.dart';
import 'package:route_transitions/route_transitions.dart';

class AppConfigPage extends StatelessWidget {
  const AppConfigPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ustawienia"),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              NetworkInterfacesDropdown(),
              PixooDevicesDropdown(),
              ChannelNameTextField(),
              TwitchApiKeyTextField(),
              Container(
                margin: const EdgeInsets.all(18.0),
                child: ServiceControllerIconButton(
                  iconSize: 50,
                  onPressed: () => pushWidget(
                    newPage: const WaitingForServicesPage(),
                    context: context,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
