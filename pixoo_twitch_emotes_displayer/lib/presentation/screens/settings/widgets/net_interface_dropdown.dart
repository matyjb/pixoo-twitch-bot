import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/net_interface.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/app_resources_cubit/app_resources_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/settings_cubit/settings_cubit.dart';

class NetInterfaceDropdown extends StatefulWidget {
  const NetInterfaceDropdown({super.key});

  @override
  State<NetInterfaceDropdown> createState() => _NetInterfaceDropdownState();
}

class _NetInterfaceDropdownState extends State<NetInterfaceDropdown> {
  bool refreshing = false;

  refresh() {
    setState(() {
      refreshing = true;
    });
    Future.delayed(
      const Duration(seconds: 2),
      () => AppResourcesCubit.i.refreshNetworkDevices().then(
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
              builder: (context, settings) => DropdownButton<NetInterface>(
                isExpanded: true,
                value: settings.selectedNetworkInterface,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                onChanged: refreshing ? null : SettingsCubit.i.setSelectedNetInterface,
                items: resources.map(
                  initial: (_) => [],
                  loaded: (s) => s.networkInterfaces
                      .map<DropdownMenuItem<NetInterface>>((NetInterface netInterface) {
                    return DropdownMenuItem<NetInterface>(
                      value: netInterface,
                      child: Text("${netInterface.name} (${netInterface.addresses.first})"),
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
