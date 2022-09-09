
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../store/app_config.dart';

class AppConfigPage extends StatelessWidget {
  const AppConfigPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            NetworkInterfacesDropdown(),
            PixooDevicesDropdown(),
            ChannelNameTextField(),
            TextButton(
              child: const Text("Run"),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

class ChannelNameTextField extends StatelessWidget {
  ChannelNameTextField({Key? key}) : super(key: key);

  final appConfig = AppConfig();
  final TextEditingController textarea = TextEditingController()
    ..text = AppConfig().channelName ?? "";

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => TextField(
        controller: textarea,
        onChanged: appConfig.setChannelName,
      ),
    );
  }
}

class PixooDevicesDropdown extends StatelessWidget {
  PixooDevicesDropdown({Key? key}) : super(key: key);

  final appConfig = AppConfig();

  bool _enabled(AppConfig appConfig) {
    return appConfig.selectedNetworkInterfaceIndex != null &&
        appConfig.pixooDevices.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => DropdownButton<int>(
        isExpanded: true,
        value: appConfig.selectedPixooDeviceIndex,
        items: appConfig.pixooDevices
            .asMap()
            .entries
            .map<DropdownMenuItem<int>>(
              (e) => DropdownMenuItem<int>(
                value: e.key,
                child: Text(e.value.DeviceName),
              ),
            )
            .toList(),
        onChanged: _enabled(appConfig) ? appConfig.selectPixooDevice : null,
      ),
    );
  }
}

class NetworkInterfacesDropdown extends StatelessWidget {
  NetworkInterfacesDropdown({Key? key}) : super(key: key);

  final appConfig = AppConfig();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => DropdownButton<int>(
        isExpanded: true,
        value: appConfig.selectedNetworkInterfaceIndex,
        items: appConfig.networkInterfaces
            .asMap()
            .entries
            .map<DropdownMenuItem<int>>(
              (e) => DropdownMenuItem<int>(
                value: e.key,
                child: Text(e.value.name),
              ),
            )
            .toList(),
        onChanged: appConfig.selectNetworkInterface,
      ),
    );
  }
}
