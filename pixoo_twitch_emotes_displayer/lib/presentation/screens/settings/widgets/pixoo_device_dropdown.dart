import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/pixoo_device.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/app_resources_cubit/app_resources_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/settings_cubit/settings_cubit.dart';

class PixooDeviceDropdown extends StatefulWidget {
  const PixooDeviceDropdown({super.key});

  @override
  State<PixooDeviceDropdown> createState() => _PixooDeviceDropdownState();
}

class _PixooDeviceDropdownState extends State<PixooDeviceDropdown> {
  bool refreshing = false;

  refresh() {
    setState(() {
      refreshing = true;
    });
    Future.delayed(
      const Duration(seconds: 2),
      () => AppResourcesCubit.i.refreshPixooDevices().then(
            (value) => setState(() {
              refreshing = false;
            }),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: BlocBuilder<AppResourcesCubit, AppResourcesState>(
            builder: (context, resources) => BlocBuilder<SettingsCubit, SettingsState>(
              builder: (context, settings) => DropdownButton<PixooDevice>(
                isExpanded: true,
                value: settings.selectedPixooDevice,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                onChanged: refreshing ? null : SettingsCubit.i.setSelectedPixooDevice,
                items: resources.map(
                  initial: (_) => [],
                  loaded: (s) =>
                      s.pixooDevices.map<DropdownMenuItem<PixooDevice>>((PixooDevice pixooDevice) {
                    return DropdownMenuItem<PixooDevice>(
                      value: pixooDevice,
                      child: Text("${pixooDevice.name} (${pixooDevice.privateIP})"),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton.filled(
            onPressed: refreshing ? null : refresh,
            icon: refreshing
                ? const SizedBox(width: 24, height: 24, child: CircularProgressIndicator())
                : const Icon(Icons.refresh),
          ),
        )
      ],
    );
  }
}
