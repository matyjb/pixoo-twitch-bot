// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_config.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppConfig on _AppConfigBase, Store {
  Computed<NetworkInterface?>? _$selectedNetworkInterfaceComputed;

  @override
  NetworkInterface? get selectedNetworkInterface =>
      (_$selectedNetworkInterfaceComputed ??= Computed<NetworkInterface?>(
              () => super.selectedNetworkInterface,
              name: '_AppConfigBase.selectedNetworkInterface'))
          .value;
  Computed<PixooDevice?>? _$selectedPixooDeviceComputed;

  @override
  PixooDevice? get selectedPixooDevice => (_$selectedPixooDeviceComputed ??=
          Computed<PixooDevice?>(() => super.selectedPixooDevice,
              name: '_AppConfigBase.selectedPixooDevice'))
      .value;
  Computed<bool>? _$isReadyComputed;

  @override
  bool get isReady => (_$isReadyComputed ??=
          Computed<bool>(() => super.isReady, name: '_AppConfigBase.isReady'))
      .value;

  late final _$networkInterfacesAtom =
      Atom(name: '_AppConfigBase.networkInterfaces', context: context);

  @override
  List<NetworkInterface> get networkInterfaces {
    _$networkInterfacesAtom.reportRead();
    return super.networkInterfaces;
  }

  @override
  set networkInterfaces(List<NetworkInterface> value) {
    _$networkInterfacesAtom.reportWrite(value, super.networkInterfaces, () {
      super.networkInterfaces = value;
    });
  }

  late final _$selectedNetworkInterfaceIndexAtom = Atom(
      name: '_AppConfigBase.selectedNetworkInterfaceIndex', context: context);

  @override
  int? get selectedNetworkInterfaceIndex {
    _$selectedNetworkInterfaceIndexAtom.reportRead();
    return super.selectedNetworkInterfaceIndex;
  }

  @override
  set selectedNetworkInterfaceIndex(int? value) {
    _$selectedNetworkInterfaceIndexAtom
        .reportWrite(value, super.selectedNetworkInterfaceIndex, () {
      super.selectedNetworkInterfaceIndex = value;
    });
  }

  late final _$pixooDevicesAtom =
      Atom(name: '_AppConfigBase.pixooDevices', context: context);

  @override
  List<PixooDevice> get pixooDevices {
    _$pixooDevicesAtom.reportRead();
    return super.pixooDevices;
  }

  @override
  set pixooDevices(List<PixooDevice> value) {
    _$pixooDevicesAtom.reportWrite(value, super.pixooDevices, () {
      super.pixooDevices = value;
    });
  }

  late final _$selectedPixooDeviceIndexAtom =
      Atom(name: '_AppConfigBase.selectedPixooDeviceIndex', context: context);

  @override
  int? get selectedPixooDeviceIndex {
    _$selectedPixooDeviceIndexAtom.reportRead();
    return super.selectedPixooDeviceIndex;
  }

  @override
  set selectedPixooDeviceIndex(int? value) {
    _$selectedPixooDeviceIndexAtom
        .reportWrite(value, super.selectedPixooDeviceIndex, () {
      super.selectedPixooDeviceIndex = value;
    });
  }

  late final _$sizeAtom = Atom(name: '_AppConfigBase.size', context: context);

  @override
  PixooSize get size {
    _$sizeAtom.reportRead();
    return super.size;
  }

  @override
  set size(PixooSize value) {
    _$sizeAtom.reportWrite(value, super.size, () {
      super.size = value;
    });
  }

  late final _$channelNameAtom =
      Atom(name: '_AppConfigBase.channelName', context: context);

  @override
  String get channelName {
    _$channelNameAtom.reportRead();
    return super.channelName;
  }

  @override
  set channelName(String value) {
    _$channelNameAtom.reportWrite(value, super.channelName, () {
      super.channelName = value;
    });
  }

  late final _$emoteOccurancesThresholdAtom =
      Atom(name: '_AppConfigBase.emoteOccurancesThreshold', context: context);

  @override
  int get emoteOccurancesThreshold {
    _$emoteOccurancesThresholdAtom.reportRead();
    return super.emoteOccurancesThreshold;
  }

  @override
  set emoteOccurancesThreshold(int value) {
    _$emoteOccurancesThresholdAtom
        .reportWrite(value, super.emoteOccurancesThreshold, () {
      super.emoteOccurancesThreshold = value;
    });
  }

  late final _$maxEmoteHistoryEntryLifetimeSecAtom = Atom(
      name: '_AppConfigBase.maxEmoteHistoryEntryLifetimeSec', context: context);

  @override
  int get maxEmoteHistoryEntryLifetimeSec {
    _$maxEmoteHistoryEntryLifetimeSecAtom.reportRead();
    return super.maxEmoteHistoryEntryLifetimeSec;
  }

  @override
  set maxEmoteHistoryEntryLifetimeSec(int value) {
    _$maxEmoteHistoryEntryLifetimeSecAtom
        .reportWrite(value, super.maxEmoteHistoryEntryLifetimeSec, () {
      super.maxEmoteHistoryEntryLifetimeSec = value;
    });
  }

  late final _$getNetworkInterfacesAsyncAction =
      AsyncAction('_AppConfigBase.getNetworkInterfaces', context: context);

  @override
  Future<void> getNetworkInterfaces() {
    return _$getNetworkInterfacesAsyncAction
        .run(() => super.getNetworkInterfaces());
  }

  late final _$getPixooDevicesAsyncAction =
      AsyncAction('_AppConfigBase.getPixooDevices', context: context);

  @override
  Future<void> getPixooDevices() {
    return _$getPixooDevicesAsyncAction.run(() => super.getPixooDevices());
  }

  late final _$_AppConfigBaseActionController =
      ActionController(name: '_AppConfigBase', context: context);

  @override
  void setChannelName(String channelName) {
    final _$actionInfo = _$_AppConfigBaseActionController.startAction(
        name: '_AppConfigBase.setChannelName');
    try {
      return super.setChannelName(channelName);
    } finally {
      _$_AppConfigBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmoteOccurancesThreshold(int t) {
    final _$actionInfo = _$_AppConfigBaseActionController.startAction(
        name: '_AppConfigBase.setEmoteOccurancesThreshold');
    try {
      return super.setEmoteOccurancesThreshold(t);
    } finally {
      _$_AppConfigBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMaxEmoteHistoryEntryLifetimeSec(int seconds) {
    final _$actionInfo = _$_AppConfigBaseActionController.startAction(
        name: '_AppConfigBase.setMaxEmoteHistoryEntryLifetimeSec');
    try {
      return super.setMaxEmoteHistoryEntryLifetimeSec(seconds);
    } finally {
      _$_AppConfigBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectNetworkInterface(int? index) {
    final _$actionInfo = _$_AppConfigBaseActionController.startAction(
        name: '_AppConfigBase.selectNetworkInterface');
    try {
      return super.selectNetworkInterface(index);
    } finally {
      _$_AppConfigBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectPixooDevice(int? index) {
    final _$actionInfo = _$_AppConfigBaseActionController.startAction(
        name: '_AppConfigBase.selectPixooDevice');
    try {
      return super.selectPixooDevice(index);
    } finally {
      _$_AppConfigBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPixooSize(PixooSize size) {
    final _$actionInfo = _$_AppConfigBaseActionController.startAction(
        name: '_AppConfigBase.setPixooSize');
    try {
      return super.setPixooSize(size);
    } finally {
      _$_AppConfigBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
networkInterfaces: ${networkInterfaces},
selectedNetworkInterfaceIndex: ${selectedNetworkInterfaceIndex},
pixooDevices: ${pixooDevices},
selectedPixooDeviceIndex: ${selectedPixooDeviceIndex},
size: ${size},
channelName: ${channelName},
emoteOccurancesThreshold: ${emoteOccurancesThreshold},
maxEmoteHistoryEntryLifetimeSec: ${maxEmoteHistoryEntryLifetimeSec},
selectedNetworkInterface: ${selectedNetworkInterface},
selectedPixooDevice: ${selectedPixooDevice},
isReady: ${isReady}
    ''';
  }
}
