import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mobx/mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/models/pixoo_device.dart';

import 'emote_chooser.dart';
import 'emote_listener.dart';

part '../generated/app_config.g.dart';

class AppConfig extends _AppConfigBase with _$AppConfig {
  static final AppConfig _singleton = AppConfig._internal();

  factory AppConfig() {
    return _singleton;
  }

  AppConfig._internal();
}

abstract class _AppConfigBase with Store {
  @observable
  List<NetworkInterface> networkInterfaces = List<NetworkInterface>.of([]);

  @observable
  int? selectedNetworkInterfaceIndex;

  @computed
  NetworkInterface? get selectedNetworkInterface =>
      selectedNetworkInterfaceIndex != null
          ? networkInterfaces[selectedNetworkInterfaceIndex!]
          : null;

  @observable
  List<PixooDevice> pixooDevices = List<PixooDevice>.of([]);

  @observable
  int? selectedPixooDeviceIndex;

  @computed
  PixooDevice? get selectedPixooDevice => selectedPixooDeviceIndex != null
      ? pixooDevices[selectedPixooDeviceIndex!]
      : null;

  @observable
  PixooSize size = PixooSize.p64;

  @observable
  String channelName = "";

  @observable
  int emoteOccurancesThreshold = 5;

  @observable
  int maxEmoteHistoryEntryLifetimeSec = 20;
  // #endregion ####################

  @computed
  bool get isReady =>
      channelName != "" &&
      selectedPixooDevice != null &&
      selectedNetworkInterface != null;

  final box = GetStorage();

  Future<void> init() async {
    await getNetworkInterfaces();
    await getPixooDevices();
    int? selectedNetworkInterfaceIndex =
        box.read<int?>("selectedNetworkInterfaceIndex");
    if (selectedNetworkInterfaceIndex != null &&
        networkInterfaces.length > selectedNetworkInterfaceIndex) {
      selectNetworkInterface(selectedNetworkInterfaceIndex);
    }

    int? selectedPixooDeviceIndex = box.read<int?>("selectedPixooDeviceIndex");
    if (selectedPixooDeviceIndex != null &&
        pixooDevices.length > selectedPixooDeviceIndex) {
      selectPixooDevice(selectedPixooDeviceIndex);
    }

    int? emoteOccurancesThreshold = box.read<int?>("emoteOccurancesThreshold");
    if (emoteOccurancesThreshold != null) {
      setEmoteOccurancesThreshold(emoteOccurancesThreshold);
    }

    int? maxEmoteHistoryEntryLifetimeSec =
        box.read<int?>("maxEmoteHistoryEntryLifetimeSec");
    if (maxEmoteHistoryEntryLifetimeSec != null) {
      setMaxEmoteHistoryEntryLifetimeSec(maxEmoteHistoryEntryLifetimeSec);
    }
  }

  @action
  void setChannelName(String channelName) {
    this.channelName = channelName;
    box.write("channelName", channelName);
  }

  @action
  void setEmoteOccurancesThreshold(int t) {
    emoteOccurancesThreshold = t;
    box.write("emoteOccurancesThreshold", t);
    EmoteChooser().refreshDisplayedEmote();
  }

  @action
  void setMaxEmoteHistoryEntryLifetimeSec(int seconds) {
    maxEmoteHistoryEntryLifetimeSec = seconds;
    box.write("maxEmoteHistoryEntryLifetimeSec", seconds);
    EmoteListener().filterEmoteHistory();
  }

  @action
  void selectNetworkInterface(int? index) {
    selectedNetworkInterfaceIndex = index;
    box.write("selectedNetworkInterfaceIndex", index);
  }

  @action
  void selectPixooDevice(int? index) {
    selectedPixooDeviceIndex = index;
    box.write("selectedPixooDeviceIndex", index);
  }

  @action
  void setPixooSize(PixooSize size) {
    this.size = size;
    box.write("size", size);
  }

  @action
  Future<void> getNetworkInterfaces() async {
    networkInterfaces =
        await NetworkInterface.list(type: InternetAddressType.IPv4);
    if (networkInterfaces.isNotEmpty) {
      selectedNetworkInterfaceIndex ??= 0;
    } else {
      selectedNetworkInterfaceIndex = null;
    }
    box.write("selectedNetworkInterfaceIndex", selectedNetworkInterfaceIndex);
  }

  @action
  Future<void> getPixooDevices() async {
    // TODO: get request
    const List<PixooDevice> debugPixooDevices = [
      PixooDevice(
        DeviceName: "P64 192.168.1.40",
        DeviceId: 4324324,
        DevicePrivateIP: "192.168.1.40",
        DeviceMac: "e4324324gf",
      ),
      PixooDevice(
        DeviceName: "P64 192.168.1.57:8080",
        DeviceId: 5435436,
        DevicePrivateIP: "192.168.1.57:8080",
        DeviceMac: "eghfds654645",
      ),
      PixooDevice(
        DeviceName: "P64 192.168.1.12:8080",
        DeviceId: 4365524,
        DevicePrivateIP: "192.168.1.12:8080",
        DeviceMac: "e43243424gf",
      ),
    ];
    if(kDebugMode){
      pixooDevices.addAll(debugPixooDevices);
    }
    if (pixooDevices.isNotEmpty) {
      selectedPixooDeviceIndex ??= 0;
    } else {
      selectedPixooDeviceIndex = null;
    }
    box.write("selectedPixooDeviceIndex", selectedPixooDeviceIndex);
  }
}
