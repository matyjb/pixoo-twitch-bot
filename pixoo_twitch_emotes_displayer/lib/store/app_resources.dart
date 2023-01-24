import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pixoo_twitch_emotes_displayer/services/pixoo_api.dart';

import '../models/pixoo_device.dart';

part '../generated/app_resources.g.dart';

const List<PixooDevice> debugPixooDevices = [
  PixooDevice(
    DeviceName: "P64 192.168.1.40:8081",
    DeviceId: 4324324,
    DevicePrivateIP: "192.168.1.40:8081",
    DeviceMac: "e4324324gf",
  ),
  PixooDevice(
    DeviceName: "P64 192.168.1.57:8081",
    DeviceId: 5435436,
    DevicePrivateIP: "192.168.1.57:8081",
    DeviceMac: "eghfds654645",
  ),
  PixooDevice(
    DeviceName: "P64 192.168.1.12:8081",
    DeviceId: 4365524,
    DevicePrivateIP: "192.168.1.12:8081",
    DeviceMac: "e43243424gf",
  ),
];

class AppResources extends _AppResourcesBase with _$AppResources {
  static AppResources instance = AppResources._internal();
  AppResources._internal();

  StreamSubscription<FileSystemEvent>? emoteDirectorySub;

  AppResources(
    String tmpCachePath,
    String documentsPath,
    List<NetworkInterface> networkInterfaces,
    List<PixooDevice> pixooDevices,
  ) {
    this.tmpCachePath = tmpCachePath;
    this.documentsPath = documentsPath;
    this.networkInterfaces = networkInterfaces.asObservable();
    this.pixooDevices = pixooDevices.asObservable();
    emoteDirectorySub = Directory(this.documentsPath).watch().listen((event) {
      setEmotesPaths(
          Directory(this.documentsPath).listSync().map((e) => e.path).toList());
    });
    instance.dispose();
    instance = this;
  }

  static Future<AppResources> init() async {
    String documentsPath =
        await getApplicationDocumentsDirectory().then((value) {
      String path = "${value.path}\\PixooEmoteDisplayer\\emotes";
      Directory(path).createSync(recursive: true);
      return path;
    });
    String tmpCachePath = await getTemporaryDirectory().then((value) {
      String path = "${value.path}\\PixooEmoteDisplayer\\emotes";
      Directory(path).createSync(recursive: true);
      return path;
    });
    var networkInterfaces =
        (await NetworkInterface.list(type: InternetAddressType.IPv4))
            .asObservable();
    var pixooDevices = (await PixooAPI.findSameLANDevices()).asObservable();

    if (kDebugMode) {
      pixooDevices.addAll(debugPixooDevices);
    }

    instance = AppResources(
      tmpCachePath,
      documentsPath,
      networkInterfaces,
      pixooDevices,
    );
    return instance;
  }

  dispose() {
    instance.emoteDirectorySub?.cancel();
  }
}

abstract class _AppResourcesBase with Store {
  @observable
  String tmpCachePath = "";
  @action
  setTmpCachePath(String value) => tmpCachePath = value;

  @observable
  String documentsPath = "";
  @action
  setDocumentsPath(String value) => documentsPath = value;

  @observable
  ObservableList<NetworkInterface> networkInterfaces =
      ObservableList<NetworkInterface>.of([]);
  @action
  setNetworkInterfaces(ObservableList<NetworkInterface> interfaces) =>
      networkInterfaces = interfaces.asObservable();

  @observable
  ObservableList<PixooDevice> pixooDevices = ObservableList<PixooDevice>.of([]);
  @action
  setPixooDevices(ObservableList<PixooDevice> devices) =>
      pixooDevices = devices.asObservable();

  

  @observable
  ObservableList<String> emotesPaths = ObservableList<String>.of([]);
  @action
  setEmotesPaths(List<String> paths) => emotesPaths = paths.asObservable();

  @computed
  bool get isReady =>
      tmpCachePath.isNotEmpty &&
      documentsPath.isNotEmpty;
}
