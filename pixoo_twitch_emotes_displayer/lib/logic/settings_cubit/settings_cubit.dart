import 'dart:math';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/net_interface.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/pixoo_device.dart';
import 'package:pixoo_twitch_emotes_displayer/helpers/theme_mode_json_converter.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';
part 'settings_cubit.g.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  static final SettingsCubit i = SettingsCubit._();
  SettingsCubit._() : super(const SettingsState());

  setApiKey(String? key) {
    bool isEmpty = key == null || key.isEmpty;
    emit(state.copyWith(apiKey: isEmpty ? null : key));
  }

  setChannelName(String? name) {
    bool isEmpty = name == null || name.isEmpty;
    emit(state.copyWith(channelName: isEmpty ? null : name));
  }

  setSelectedNetInterface(NetInterface? netInterface) {
    emit(state.copyWith(selectedNetworkInterface: netInterface));
  }

  setSelectedPixooDevice(PixooDevice? networkInterface) {
    emit(state.copyWith(selectedPixooDevice: networkInterface));
  }

  setBufferSize(int size) {
    int s = max(10, min(40, size));
    emit(state.copyWith(bufferSize: s));
  }

  @override
  SettingsState? fromJson(Map<String, dynamic> json) => SettingsState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(SettingsState state) => state.toJson();
}
