// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../services/chat_emotes_listener.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ChatEmotesListener on _ChatEmotesListenerBase, Store {
  late final _$statusAtom =
      Atom(name: '_ChatEmotesListenerBase.status', context: context);

  @override
  ChatEmotesListenerStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(ChatEmotesListenerStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  late final _$_ChatEmotesListenerBaseActionController =
      ActionController(name: '_ChatEmotesListenerBase', context: context);

  @override
  void setStatus(ChatEmotesListenerStatus value) {
    final _$actionInfo = _$_ChatEmotesListenerBaseActionController.startAction(
        name: '_ChatEmotesListenerBase.setStatus');
    try {
      return super.setStatus(value);
    } finally {
      _$_ChatEmotesListenerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
status: ${status}
    ''';
  }
}
