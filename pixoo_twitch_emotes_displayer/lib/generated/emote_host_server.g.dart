// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../services/emote_host_server.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EmoteHostServer on _EmoteHostServerBase, Store {
  late final _$_serverAtom =
      Atom(name: '_EmoteHostServerBase._server', context: context);

  @override
  HttpServer? get _server {
    _$_serverAtom.reportRead();
    return super._server;
  }

  @override
  set _server(HttpServer? value) {
    _$_serverAtom.reportWrite(value, super._server, () {
      super._server = value;
    });
  }

  late final _$statusAtom =
      Atom(name: '_EmoteHostServerBase.status', context: context);

  @override
  EmoteHostServerStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(EmoteHostServerStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  late final _$startAsyncAction =
      AsyncAction('_EmoteHostServerBase.start', context: context);

  @override
  Future<void> start() {
    return _$startAsyncAction.run(() => super.start());
  }

  late final _$_EmoteHostServerBaseActionController =
      ActionController(name: '_EmoteHostServerBase', context: context);

  @override
  dynamic setStatus(EmoteHostServerStatus value) {
    final _$actionInfo = _$_EmoteHostServerBaseActionController.startAction(
        name: '_EmoteHostServerBase.setStatus');
    try {
      return super.setStatus(value);
    } finally {
      _$_EmoteHostServerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic stop() {
    final _$actionInfo = _$_EmoteHostServerBaseActionController.startAction(
        name: '_EmoteHostServerBase.stop');
    try {
      return super.stop();
    } finally {
      _$_EmoteHostServerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
status: ${status}
    ''';
  }
}
