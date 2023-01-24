import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/store/app_resources.dart';
import 'package:pixoo_twitch_emotes_displayer/store/user_settings.dart';

import '../widgets/service_controller_icon_button.dart';

class AppConfigPage extends StatelessWidget {
  const AppConfigPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChannelNameTextField extends StatelessWidget {
  ChannelNameTextField({Key? key}) : super(key: key);

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

class PixooDevicesDropdown extends StatelessWidget {
  PixooDevicesDropdown({Key? key}) : super(key: key);

  final UserSettings _userSettings = UserSettings.instance;
  final AppResources _appResources = AppResources.instance;

  bool _enabled() {
    return _userSettings.selectedNetworkInterface != null &&
        _appResources.pixooDevices.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => DropdownButton<int>(
        isExpanded: true,
        value: _userSettings.selectedPixooDevice?.DeviceId,
        items: _appResources.pixooDevices
            .map<DropdownMenuItem<int>>(
              (e) => DropdownMenuItem<int>(
                value: e.DeviceId,
                child: Text(e.DeviceName),
              ),
            )
            .toList(),
        onChanged: _enabled() ? _userSettings.setSelectedPixooDeviceId : null,
      ),
    );
  }
}

class NetworkInterfacesDropdown extends StatelessWidget {
  NetworkInterfacesDropdown({Key? key}) : super(key: key);

  final UserSettings _userSettings = UserSettings.instance;
  final AppResources _appResources = AppResources.instance;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => DropdownButton<String>(
        isExpanded: true,
        value: _userSettings.selectedNetworkInterface?.name,
        items: _appResources.networkInterfaces
            .map<DropdownMenuItem<String>>(
              (e) => DropdownMenuItem<String>(
                value: e.name,
                child: Text(e.name),
              ),
            )
            .toList(),
        onChanged: _userSettings.setSelectedNetworkInterfaceName,
      ),
    );
  }
}

class TwitchApiKeyTextField extends StatelessWidget {
  TwitchApiKeyTextField({Key? key}) : super(key: key);

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