// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emote_listener.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EmoteListener on _EmoteListenerBase, Store {
  Computed<Map<String, int>>? _$rankingComputed;

  @override
  Map<String, int> get ranking =>
      (_$rankingComputed ??= Computed<Map<String, int>>(() => super.ranking,
              name: '_EmoteListenerBase.ranking'))
          .value;

  late final _$emoteHistoryAtom =
      Atom(name: '_EmoteListenerBase.emoteHistory', context: context);

  @override
  List<String> get emoteHistory {
    _$emoteHistoryAtom.reportRead();
    return super.emoteHistory;
  }

  @override
  set emoteHistory(List<String> value) {
    _$emoteHistoryAtom.reportWrite(value, super.emoteHistory, () {
      super.emoteHistory = value;
    });
  }

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
  void _reportEmote(String emote) {
    final _$actionInfo = _$_EmoteListenerBaseActionController.startAction(
        name: '_EmoteListenerBase._reportEmote');
    try {
      return super._reportEmote(emote);
    } finally {
      _$_EmoteListenerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _clearEmoteHistory() {
    final _$actionInfo = _$_EmoteListenerBaseActionController.startAction(
        name: '_EmoteListenerBase._clearEmoteHistory');
    try {
      return super._clearEmoteHistory();
    } finally {
      _$_EmoteListenerBaseActionController.endAction(_$actionInfo);
    }
  }

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
  String toString() {
    return '''
emoteHistory: ${emoteHistory},
status: ${status},
ranking: ${ranking}
    ''';
  }
}
