import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/store/app_resources.dart';
import 'package:pixoo_twitch_emotes_displayer/store/user_settings.dart';

class NetworkInterfacesDropdown extends StatelessWidget {
  NetworkInterfacesDropdown({super.key});

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
