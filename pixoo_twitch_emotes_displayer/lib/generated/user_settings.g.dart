// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../store/user_settings.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserSettings on _UserSettingsBase, Store {
  Computed<PixooDevice?>? _$selectedPixooDeviceComputed;

  @override
  PixooDevice? get selectedPixooDevice => (_$selectedPixooDeviceComputed ??=
          Computed<PixooDevice?>(() => super.selectedPixooDevice,
              name: '_UserSettingsBase.selectedPixooDevice'))
      .value;
  Computed<NetworkInterface?>? _$selectedNetworkInterfaceComputed;

  @override
  NetworkInterface? get selectedNetworkInterface =>
      (_$selectedNetworkInterfaceComputed ??= Computed<NetworkInterface?>(
              () => super.selectedNetworkInterface,
              name: '_UserSettingsBase.selectedNetworkInterface'))
          .value;
  Computed<bool>? _$isReadyComputed;

  @override
  bool get isReady => (_$isReadyComputed ??= Computed<bool>(() => super.isReady,
          name: '_UserSettingsBase.isReady'))
      .value;

  late final _$twitchApiKeyAtom =
      Atom(name: '_UserSettingsBase.twitchApiKey', context: context);

  @override
  String? get twitchApiKey {
    _$twitchApiKeyAtom.reportRead();
    return super.twitchApiKey;
  }

  @override
  set twitchApiKey(String? value) {
    _$twitchApiKeyAtom.reportWrite(value, super.twitchApiKey, () {
      super.twitchApiKey = value;
    });
  }

  late final _$channelNameAtom =
      Atom(name: '_UserSettingsBase.channelName', context: context);

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

  late final _$_selectedPixooDeviceIdAtom =
      Atom(name: '_UserSettingsBase._selectedPixooDeviceId', context: context);

  @override
  int? get _selectedPixooDeviceId {
    _$_selectedPixooDeviceIdAtom.reportRead();
    return super._selectedPixooDeviceId;
  }

  @override
  set _selectedPixooDeviceId(int? value) {
    _$_selectedPixooDeviceIdAtom
        .reportWrite(value, super._selectedPixooDeviceId, () {
      super._selectedPixooDeviceId = value;
    });
  }

  late final _$_selectedNetworkInterfaceNameAtom = Atom(
      name: '_UserSettingsBase._selectedNetworkInterfaceName',
      context: context);

  @override
  String? get _selectedNetworkInterfaceName {
    _$_selectedNetworkInterfaceNameAtom.reportRead();
    return super._selectedNetworkInterfaceName;
  }

  @override
  set _selectedNetworkInterfaceName(String? value) {
    _$_selectedNetworkInterfaceNameAtom
        .reportWrite(value, super._selectedNetworkInterfaceName, () {
      super._selectedNetworkInterfaceName = value;
    });
  }

  late final _$emoteTTLAtom =
      Atom(name: '_UserSettingsBase.emoteTTL', context: context);

  @override
  int get emoteTTL {
    _$emoteTTLAtom.reportRead();
    return super.emoteTTL;
  }

  @override
  set emoteTTL(int value) {
    _$emoteTTLAtom.reportWrite(value, super.emoteTTL, () {
      super.emoteTTL = value;
    });
  }

  late final _$emoteActivationThresholdAtom = Atom(
      name: '_UserSettingsBase.emoteActivationThreshold', context: context);

  @override
  int get emoteActivationThreshold {
    _$emoteActivationThresholdAtom.reportRead();
    return super.emoteActivationThreshold;
  }

  @override
  set emoteActivationThreshold(int value) {
    _$emoteActivationThresholdAtom
        .reportWrite(value, super.emoteActivationThreshold, () {
      super.emoteActivationThreshold = value;
    });
  }

  late final _$_UserSettingsBaseActionController =
      ActionController(name: '_UserSettingsBase', context: context);

  @override
  dynamic setApiKey(String value) {
    final _$actionInfo = _$_UserSettingsBaseActionController.startAction(
        name: '_UserSettingsBase.setApiKey');
    try {
      return super.setApiKey(value);
    } finally {
      _$_UserSettingsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setChannelName(String value) {
    final _$actionInfo = _$_UserSettingsBaseActionController.startAction(
        name: '_UserSettingsBase.setChannelName');
    try {
      return super.setChannelName(value);
    } finally {
      _$_UserSettingsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSelectedPixooDeviceId(int? value) {
    final _$actionInfo = _$_UserSettingsBaseActionController.startAction(
        name: '_UserSettingsBase.setSelectedPixooDeviceId');
    try {
      return super.setSelectedPixooDeviceId(value);
    } finally {
      _$_UserSettingsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSelectedNetworkInterfaceName(String? value) {
    final _$actionInfo = _$_UserSettingsBaseActionController.startAction(
        name: '_UserSettingsBase.setSelectedNetworkInterfaceName');
    try {
      return super.setSelectedNetworkInterfaceName(value);
    } finally {
      _$_UserSettingsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEmoteTTL(int value) {
    final _$actionInfo = _$_UserSettingsBaseActionController.startAction(
        name: '_UserSettingsBase.setEmoteTTL');
    try {
      return super.setEmoteTTL(value);
    } finally {
      _$_UserSettingsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEmoteActivationThreshold(int value) {
    final _$actionInfo = _$_UserSettingsBaseActionController.startAction(
        name: '_UserSettingsBase.setEmoteActivationThreshold');
    try {
      return super.setEmoteActivationThreshold(value);
    } finally {
      _$_UserSettingsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
twitchApiKey: ${twitchApiKey},
channelName: ${channelName},
emoteTTL: ${emoteTTL},
emoteActivationThreshold: ${emoteActivationThreshold},
selectedPixooDevice: ${selectedPixooDevice},
selectedNetworkInterface: ${selectedNetworkInterface},
isReady: ${isReady}
    ''';
  }
}
