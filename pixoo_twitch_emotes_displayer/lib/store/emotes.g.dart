// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emotes.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Emotes on _EmotesBase, Store {
  Computed<NetworkInterface?>? _$selectedNetworkInterfaceComputed;

  @override
  NetworkInterface? get selectedNetworkInterface =>
      (_$selectedNetworkInterfaceComputed ??= Computed<NetworkInterface?>(
              () => super.selectedNetworkInterface,
              name: '_EmotesBase.selectedNetworkInterface'))
          .value;
  Computed<PixooDevice?>? _$selectedPixooDeviceComputed;

  @override
  PixooDevice? get selectedPixooDevice => (_$selectedPixooDeviceComputed ??=
          Computed<PixooDevice?>(() => super.selectedPixooDevice,
              name: '_EmotesBase.selectedPixooDevice'))
      .value;

  late final _$networkInterfacesAtom =
      Atom(name: '_EmotesBase.networkInterfaces', context: context);

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

  late final _$selectedNetworkInterfaceIndexAtom =
      Atom(name: '_EmotesBase.selectedNetworkInterfaceIndex', context: context);

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
      Atom(name: '_EmotesBase.pixooDevices', context: context);

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
      Atom(name: '_EmotesBase.selectedPixooDeviceIndex', context: context);

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

  late final _$sizeAtom = Atom(name: '_EmotesBase.size', context: context);

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
      Atom(name: '_EmotesBase.channelName', context: context);

  @override
  String? get channelName {
    _$channelNameAtom.reportRead();
    return super.channelName;
  }

  @override
  set channelName(String? value) {
    _$channelNameAtom.reportWrite(value, super.channelName, () {
      super.channelName = value;
    });
  }

  late final _$initAsyncAction =
      AsyncAction('_EmotesBase.init', context: context);

  @override
  Future<void> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  late final _$getNetworkInterfacesAsyncAction =
      AsyncAction('_EmotesBase.getNetworkInterfaces', context: context);

  @override
  Future<void> getNetworkInterfaces() {
    return _$getNetworkInterfacesAsyncAction
        .run(() => super.getNetworkInterfaces());
  }

  late final _$getPixooDevicesAsyncAction =
      AsyncAction('_EmotesBase.getPixooDevices', context: context);

  @override
  Future<void> getPixooDevices() {
    return _$getPixooDevicesAsyncAction.run(() => super.getPixooDevices());
  }

  late final _$_EmotesBaseActionController =
      ActionController(name: '_EmotesBase', context: context);

  @override
  void setChannelName(String? channelName) {
    final _$actionInfo = _$_EmotesBaseActionController.startAction(
        name: '_EmotesBase.setChannelName');
    try {
      return super.setChannelName(channelName);
    } finally {
      _$_EmotesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectNetworkInterface(int? index) {
    final _$actionInfo = _$_EmotesBaseActionController.startAction(
        name: '_EmotesBase.selectNetworkInteface');
    try {
      return super.selectNetworkInterface(index);
    } finally {
      _$_EmotesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectPixooDevice(int? index) {
    final _$actionInfo = _$_EmotesBaseActionController.startAction(
        name: '_EmotesBase.selectPixooDevice');
    try {
      return super.selectPixooDevice(index);
    } finally {
      _$_EmotesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPixooSize(PixooSize size) {
    final _$actionInfo = _$_EmotesBaseActionController.startAction(
        name: '_EmotesBase.setPixooSize');
    try {
      return super.setPixooSize(size);
    } finally {
      _$_EmotesBaseActionController.endAction(_$actionInfo);
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
selectedNetworkInterface: ${selectedNetworkInterface},
selectedPixooDevice: ${selectedPixooDevice}
    ''';
  }
}
