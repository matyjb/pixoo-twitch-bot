// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../store/app_resources.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppResources on _AppResourcesBase, Store {
  late final _$tmpCachePathAtom =
      Atom(name: '_AppResourcesBase.tmpCachePath', context: context);

  @override
  String get tmpCachePath {
    _$tmpCachePathAtom.reportRead();
    return super.tmpCachePath;
  }

  @override
  set tmpCachePath(String value) {
    _$tmpCachePathAtom.reportWrite(value, super.tmpCachePath, () {
      super.tmpCachePath = value;
    });
  }

  late final _$documentsPathAtom =
      Atom(name: '_AppResourcesBase.documentsPath', context: context);

  @override
  String get documentsPath {
    _$documentsPathAtom.reportRead();
    return super.documentsPath;
  }

  @override
  set documentsPath(String value) {
    _$documentsPathAtom.reportWrite(value, super.documentsPath, () {
      super.documentsPath = value;
    });
  }

  late final _$networkInterfacesAtom =
      Atom(name: '_AppResourcesBase.networkInterfaces', context: context);

  @override
  ObservableList<NetworkInterface> get networkInterfaces {
    _$networkInterfacesAtom.reportRead();
    return super.networkInterfaces;
  }

  @override
  set networkInterfaces(ObservableList<NetworkInterface> value) {
    _$networkInterfacesAtom.reportWrite(value, super.networkInterfaces, () {
      super.networkInterfaces = value;
    });
  }

  late final _$pixooDevicesAtom =
      Atom(name: '_AppResourcesBase.pixooDevices', context: context);

  @override
  ObservableList<PixooDevice> get pixooDevices {
    _$pixooDevicesAtom.reportRead();
    return super.pixooDevices;
  }

  @override
  set pixooDevices(ObservableList<PixooDevice> value) {
    _$pixooDevicesAtom.reportWrite(value, super.pixooDevices, () {
      super.pixooDevices = value;
    });
  }

  late final _$twitchApiKeyAtom =
      Atom(name: '_AppResourcesBase.twitchApiKey', context: context);

  late final _$emotesPathsAtom =
      Atom(name: '_AppResourcesBase.emotesPaths', context: context);

  @override
  ObservableList<String> get emotesPaths {
    _$emotesPathsAtom.reportRead();
    return super.emotesPaths;
  }

  @override
  set emotesPaths(ObservableList<String> value) {
    _$emotesPathsAtom.reportWrite(value, super.emotesPaths, () {
      super.emotesPaths = value;
    });
  }

  late final _$_AppResourcesBaseActionController =
      ActionController(name: '_AppResourcesBase', context: context);

  @override
  dynamic setTmpCachePath(String value) {
    final _$actionInfo = _$_AppResourcesBaseActionController.startAction(
        name: '_AppResourcesBase.setTmpCachePath');
    try {
      return super.setTmpCachePath(value);
    } finally {
      _$_AppResourcesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDocumentsPath(String value) {
    final _$actionInfo = _$_AppResourcesBaseActionController.startAction(
        name: '_AppResourcesBase.setDocumentsPath');
    try {
      return super.setDocumentsPath(value);
    } finally {
      _$_AppResourcesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNetworkInterfaces(ObservableList<NetworkInterface> netifs) {
    final _$actionInfo = _$_AppResourcesBaseActionController.startAction(
        name: '_AppResourcesBase.setNetworkInterfaces');
    try {
      return super.setNetworkInterfaces(netifs);
    } finally {
      _$_AppResourcesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPixooDevices(ObservableList<PixooDevice> devices) {
    final _$actionInfo = _$_AppResourcesBaseActionController.startAction(
        name: '_AppResourcesBase.setPixooDevices');
    try {
      return super.setPixooDevices(devices);
    } finally {
      _$_AppResourcesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEmotesPaths(List<String> paths) {
    final _$actionInfo = _$_AppResourcesBaseActionController.startAction(
        name: '_AppResourcesBase.setEmotesPaths');
    try {
      return super.setEmotesPaths(paths);
    } finally {
      _$_AppResourcesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tmpCachePath: ${tmpCachePath},
documentsPath: ${documentsPath},
networkInterfaces: ${networkInterfaces},
pixooDevices: ${pixooDevices},
emotesPaths: ${emotesPaths}
    ''';
  }
}
