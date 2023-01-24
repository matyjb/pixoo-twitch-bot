import 'dart:io';

import 'package:get_storage/get_storage.dart';
import 'package:mobx/mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/store/app_resources.dart';
import 'package:collection/collection.dart';

import '../models/pixoo_device.dart';

part '../generated/user_settings.g.dart';

class UserSettings extends _UserSettingsBase with _$UserSettings {
  static final UserSettings instance = UserSettings._internal();

  UserSettings._internal();

  load() {
    var apikey = box.read<String>("twitchApiKey");
    if (apikey != null) setApiKey(apikey);
    var v0 = box.read<String>("channelName");
    if (v0 != null) setChannelName(v0);
    var v1 = box.read<int>("_selectedPixooDeviceId");
    if (v1 != null) setSelectedPixooDeviceId(v1);
    var v2 = box.read<String>("_selectedNetworkInterfaceName");
    if (v2 != null) setSelectedNetworkInterfaceName(v2);
    var v3 = box.read<int>("emoteTTL");
    if (v3 != null) setEmoteTTL(v3);
    var v4 = box.read<int>("emoteActivationThreshold");
    if (v4 != null) setEmoteActivationThreshold(v4);
  }
}

abstract class _UserSettingsBase with Store {
  final box = GetStorage("UserSettings");

  @observable
  String? twitchApiKey;
  @action
  setApiKey(String value) {
    twitchApiKey = value;
    box.write("twitchApiKey", value);
  }

  @observable
  String? channelName;
  @action
  setChannelName(String value) {
    channelName = value;
    box.write("channelName", value);
  }

  @observable
  int? _selectedPixooDeviceId;
  @action
  setSelectedPixooDeviceId(int? value) {
    _selectedPixooDeviceId = value;
    box.write("_selectedPixooDeviceId", value);
  }

  @computed
  PixooDevice? get selectedPixooDevice => AppResources.instance.pixooDevices
      .firstWhereOrNull((n) => n.DeviceId == _selectedPixooDeviceId);

  @observable
  String? _selectedNetworkInterfaceName;
  @action
  setSelectedNetworkInterfaceName(String? value) {
    _selectedNetworkInterfaceName = value;
    box.write("_selectedNetworkInterfaceName", value);
  }

  @computed
  NetworkInterface? get selectedNetworkInterface =>
      AppResources.instance.networkInterfaces
          .firstWhereOrNull((n) => n.name == _selectedNetworkInterfaceName);

  @observable
  int emoteTTL = 20;
  @action
  setEmoteTTL(int value) {
    emoteTTL = value;
    box.write("emoteTTL", value);
  }

  @observable
  int emoteActivationThreshold = 5;
  @action
  setEmoteActivationThreshold(int value) {
    emoteActivationThreshold = value;
    box.write("emoteActivationThreshold", value);
  }

  @computed
  bool get isReady =>
      twitchApiKey != null &&
      twitchApiKey!.isNotEmpty &&
      channelName != null &&
      channelName!.isNotEmpty &&
      selectedNetworkInterface != null &&
      selectedPixooDevice != null;
}
