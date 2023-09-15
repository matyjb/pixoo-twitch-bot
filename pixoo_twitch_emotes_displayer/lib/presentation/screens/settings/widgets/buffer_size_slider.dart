import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/settings_cubit/settings_cubit.dart';

class BufferSizeSlider extends StatefulWidget {
  const BufferSizeSlider({super.key});

  @override
  State<BufferSizeSlider> createState() => _BufferSizeSliderState();
}

class _BufferSizeSliderState extends State<BufferSizeSlider> {
  double _currentSliderValue = SettingsCubit.i.state.bufferSize.toDouble();

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsCubit, SettingsState>(
      listener: (context, state) {
        setState(() {
          _currentSliderValue = state.bufferSize.toDouble();
        });
      },
      child: Slider(
        max: SettingsCubit.maxBufferSize.toDouble(),
        min: SettingsCubit.minBufferSize.toDouble(),
        divisions: SettingsCubit.maxBufferSize - SettingsCubit.minBufferSize,
        value: _currentSliderValue,
        label: _currentSliderValue.toInt().toString(),
        onChanged: (v) => setState(() {
          _currentSliderValue = v;
        }),
        onChangeEnd: (double v) => SettingsCubit.i.setBufferSize(v.toInt()),
      ),
    );
  }
}
