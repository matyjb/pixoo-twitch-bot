import 'dart:io';

import 'package:get_storage/get_storage.dart';
import 'package:mobx/mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/models/pixoo_device/pixoo_device.dart';

part 'emotes.g.dart';

class Emotes extends _EmotesBase with _$Emotes {
  static final Emotes _singleton = Emotes._internal();

  factory Emotes() {
    return _singleton;
  }

  Emotes._internal();
}

abstract class _EmotesBase with Store {
  // #region App settings
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
  String? channelName;
  // #endregion ####################

  final box = GetStorage();

  Future<void> init() async {
    await getNetworkInterfaces();
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
  }

  @action
  void setChannelName(String? channelName) {
    this.channelName = channelName;
    box.write("channelName", channelName);
    // TODO: emote listener reconnect
  }

  @action
  void selectNetworkInterface(int? index) {
    selectedNetworkInterfaceIndex = index;
    box.write("selectedNetworkInterfaceIndex", index);
    if (selectedNetworkInterfaceIndex != null) {
      getPixooDevices();
    }
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
    // TODO: refresh cache
  }

  @action
  Future<void> getNetworkInterfaces() async {
    networkInterfaces =
        await NetworkInterface.list(type: InternetAddressType.IPv4);
    if (networkInterfaces.isNotEmpty) {
      selectedNetworkInterfaceIndex ??= 0;
      await getPixooDevices();
    } else {
      selectedNetworkInterfaceIndex = null;
    }
    box.write("selectedNetworkInterfaceIndex", selectedNetworkInterfaceIndex);
  }

  @action
  Future<void> getPixooDevices() async {
    // TODO: get request
    pixooDevices = [
      const PixooDevice(
        DeviceName: "Pixoo64",
        DeviceId: 4324324,
        DevicePrivateIP: "192.169.1.40",
        DeviceMac: "e4324324gf",
      ),
      const PixooDevice(
        DeviceName: "Pixoo16",
        DeviceId: 5435436,
        DevicePrivateIP: "192.169.1.41",
        DeviceMac: "eghfds654645",
      ),
    ];
    if (pixooDevices.isNotEmpty) {
      selectedPixooDeviceIndex ??= 0;
    } else {
      selectedPixooDeviceIndex = null;
    }
    box.write("selectedPixooDeviceIndex", selectedPixooDeviceIndex);
  }
}
