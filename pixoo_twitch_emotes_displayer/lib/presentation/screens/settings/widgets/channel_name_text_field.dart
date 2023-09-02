import 'package:flutter/material.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/settings_cubit/settings_cubit.dart';

class ChannelNameTextField extends StatefulWidget {
  final bool readOnly;
  const ChannelNameTextField({super.key, this.readOnly = false});

  @override
  State<ChannelNameTextField> createState() => _ChannelNameTextFieldState();
}

class _ChannelNameTextFieldState extends State<ChannelNameTextField> {
  final _channelNameController = TextEditingController()..text = SettingsCubit.i.state.channelName ?? "";

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _channelNameController,
      onChanged: SettingsCubit.i.setChannelName,
      decoration: const InputDecoration(
        // border: OutlineInputBorder(),
        hintText: "forsen",
        labelText: 'Channel name',
      ),
      readOnly: widget.readOnly,
      enableIMEPersonalizedLearning: true,
    );
  }
}
