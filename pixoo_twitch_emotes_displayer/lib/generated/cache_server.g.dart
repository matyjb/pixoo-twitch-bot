// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../store/cache_server.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CacheServer on _CacheServerBase, Store {
  late final _$emoteCachePathAtom =
      Atom(name: '_CacheServerBase.emoteCachePath', context: context);

  @override
  String? get emoteCachePath {
    _$emoteCachePathAtom.reportRead();
    return super.emoteCachePath;
  }

  @override
  set emoteCachePath(String? value) {
    _$emoteCachePathAtom.reportWrite(value, super.emoteCachePath, () {
      super.emoteCachePath = value;
    });
  }

  late final _$tmpCachePathAtom =
      Atom(name: '_CacheServerBase.tmpCachePath', context: context);

  @override
  String? get tmpCachePath {
    _$tmpCachePathAtom.reportRead();
    return super.tmpCachePath;
  }

  @override
  set tmpCachePath(String? value) {
    _$tmpCachePathAtom.reportWrite(value, super.tmpCachePath, () {
      super.tmpCachePath = value;
    });
  }

  late final _$_CacheServerBaseActionController =
      ActionController(name: '_CacheServerBase', context: context);

  @override
  void setEmoteCachePath(String path) {
    final _$actionInfo = _$_CacheServerBaseActionController.startAction(
        name: '_CacheServerBase.setEmoteCachePath');
    try {
      return super.setEmoteCachePath(path);
    } finally {
      _$_CacheServerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTmpCachePath(String path) {
    final _$actionInfo = _$_CacheServerBaseActionController.startAction(
        name: '_CacheServerBase.setTmpCachePath');
    try {
      return super.setTmpCachePath(path);
    } finally {
      _$_CacheServerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
emoteCachePath: ${emoteCachePath},
tmpCachePath: ${tmpCachePath}
    ''';
  }
}
