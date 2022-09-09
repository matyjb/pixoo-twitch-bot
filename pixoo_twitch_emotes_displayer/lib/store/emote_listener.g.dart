// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emote_listener.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EmoteListener on _EmoteListenerBase, Store {
  late final _$statusAtom =
      Atom(name: '_EmoteListenerBase.status', context: context);

  @override
  EmoteListenerStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(EmoteListenerStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  late final _$_EmoteListenerBaseActionController =
      ActionController(name: '_EmoteListenerBase', context: context);

  @override
  void _changeStatus(EmoteListenerStatus newStatus) {
    final _$actionInfo = _$_EmoteListenerBaseActionController.startAction(
        name: '_EmoteListenerBase._changeStatus');
    try {
      return super._changeStatus(newStatus);
    } finally {
      _$_EmoteListenerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void connect() {
    final _$actionInfo = _$_EmoteListenerBaseActionController.startAction(
        name: '_EmoteListenerBase.connect');
    try {
      return super.connect();
    } finally {
      _$_EmoteListenerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
status: ${status}
    ''';
  }
}
