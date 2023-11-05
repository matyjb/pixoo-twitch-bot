import 'dart:math';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/net_interface.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/pixoo_device.dart';
import 'package:pixoo_twitch_emotes_displayer/helpers/theme_mode_json_converter.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/app_resources_cubit/app_resources_cubit.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';
part 'settings_cubit.g.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  static final SettingsCubit i = SettingsCubit._();
  final _appResources = AppResourcesCubit.i;

  static const int maxBufferSize = 40;
  static const int minBufferSize = 10;

  SettingsCubit._() : super(const SettingsState()) {
    _appResources.stream.listen((event) {
      event.maybeWhen(orElse: () {
        emit(state.copyWith(
          selectedPixooDevice: null,
          selectedNetworkInterface: null,
        ));
      }, loaded: (_, __, netInterfaces, pixooDevices) {
        emit(state.copyWith(
          selectedPixooDevice:
              pixooDevices.contains(state.selectedPixooDevice) ? state.selectedPixooDevice : null,
          selectedNetworkInterface: netInterfaces.contains(state.selectedNetworkInterface)
              ? state.selectedNetworkInterface
              : null,
        ));
      });
    });
  }

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
    int s = max(minBufferSize, min(maxBufferSize, size));
    emit(state.copyWith(bufferSize: s));
  }

  @override
  SettingsState? fromJson(Map<String, dynamic> json) {
    final orig = SettingsState.fromJson(json);
    return _appResources.state.map(
      initial: (_) => orig.copyWith(
        selectedPixooDevice: null,
        selectedNetworkInterface: null,
      ),
      loaded: (state) => orig.copyWith(
        selectedPixooDevice:
            state.pixooDevices.contains(orig.selectedPixooDevice) ? orig.selectedPixooDevice : null,
        selectedNetworkInterface: state.networkInterfaces.contains(orig.selectedNetworkInterface)
            ? orig.selectedNetworkInterface
            : null,
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(SettingsState state) => state.toJson();
}
