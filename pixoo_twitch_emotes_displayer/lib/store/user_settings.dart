import 'dart:io';

import 'package:collection/collection.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mobx/mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/models/pixoo_device.dart';
import 'package:pixoo_twitch_emotes_displayer/store/app_resources.dart';

part '../generated/user_settings.g.dart';

class UserSettings extends _UserSettingsBase with _$UserSettings {
  static final UserSettings instance = UserSettings._internal();

  UserSettings._internal();

  void load() {
    final apikey = box.read<String>("twitchApiKey");
    if (apikey != null) setApiKey(apikey);
    final v0 = box.read<String>("channelName");
    if (v0 != null) setChannelName(v0);
    final v1 = box.read<int>("_selectedPixooDeviceId");
    if (v1 != null) setSelectedPixooDeviceId(v1);
    final v2 = box.read<String>("_selectedNetworkInterfaceName");
    if (v2 != null) setSelectedNetworkInterfaceName(v2);
    final v3 = box.read<int>("emoteTTL");
    if (v3 != null) setEmoteTTL(v3);
    final v4 = box.read<int>("emoteActivationThreshold");
    if (v4 != null) setEmoteActivationThreshold(v4);
  }
}

abstract class _UserSettingsBase with Store {
  final box = GetStorage("UserSettings");

  @observable
  String? twitchApiKey;
  @action
  void setApiKey(String value) {
    twitchApiKey = value;
    box.write("twitchApiKey", value);
  }

  @observable
  String? channelName;
  @action
  void setChannelName(String value) {
    channelName = value;
    box.write("channelName", value);
  }

  @observable
  int? _selectedPixooDeviceId;
  @action
  void setSelectedPixooDeviceId(int? value) {
    _selectedPixooDeviceId = value;
    box.write("_selectedPixooDeviceId", value);
  }

  @computed
  PixooDevice? get selectedPixooDevice => AppResources.instance.pixooDevices
      .firstWhereOrNull((n) => n.DeviceId == _selectedPixooDeviceId);

  @observable
  String? _selectedNetworkInterfaceName;
  @action
  void setSelectedNetworkInterfaceName(String? value) {
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
  void setEmoteTTL(int value) {
    emoteTTL = value;
    box.write("emoteTTL", value);
  }

  @observable
  int emoteActivationThreshold = 5;
  @action
  void setEmoteActivationThreshold(int value) {
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
