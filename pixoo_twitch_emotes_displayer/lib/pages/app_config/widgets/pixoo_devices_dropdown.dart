import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/store/app_resources.dart';
import 'package:pixoo_twitch_emotes_displayer/store/user_settings.dart';

class PixooDevicesDropdown extends StatelessWidget {
  PixooDevicesDropdown({super.key});

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
