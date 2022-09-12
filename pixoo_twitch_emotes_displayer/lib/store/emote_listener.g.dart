// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emote_listener.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EmoteListener on _EmoteListenerBase, Store {
  Computed<List<MapEntry<Emote, Pair<DateTime, int>>>>? _$rankingComputed;

  @override
  List<MapEntry<Emote, Pair<DateTime, int>>> get ranking =>
      (_$rankingComputed ??=
              Computed<List<MapEntry<Emote, Pair<DateTime, int>>>>(
                  () => super.ranking,
                  name: '_EmoteListenerBase.ranking'))
          .value;

  late final _$emoteHistoryAtom =
      Atom(name: '_EmoteListenerBase.emoteHistory', context: context);

  @override
  ObservableList<EmoteHistoryEntry> get emoteHistory {
    _$emoteHistoryAtom.reportRead();
    return super.emoteHistory;
  }

  @override
  set emoteHistory(ObservableList<EmoteHistoryEntry> value) {
    _$emoteHistoryAtom.reportWrite(value, super.emoteHistory, () {
      super.emoteHistory = value;
    });
  }

  late final _$maxEmoteHistoryEntryLifetimeSecAtom = Atom(
      name: '_EmoteListenerBase.maxEmoteHistoryEntryLifetimeSec',
      context: context);

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

  late final _$emotesAtom =
      Atom(name: '_EmoteListenerBase.emotes', context: context);

  @override
  Map<String, Emote> get emotes {
    _$emotesAtom.reportRead();
    return super.emotes;
  }

  @override
  set emotes(Map<String, Emote> value) {
    _$emotesAtom.reportWrite(value, super.emotes, () {
      super.emotes = value;
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

  late final _$getEmotesAsyncAction =
      AsyncAction('_EmoteListenerBase.getEmotes', context: context);

  @override
  Future<void> getEmotes(String channelName) {
    return _$getEmotesAsyncAction.run(() => super.getEmotes(channelName));
  }

  late final _$_EmoteListenerBaseActionController =
      ActionController(name: '_EmoteListenerBase', context: context);

  @override
  void _reportEmote(Emote emote) {
    final _$actionInfo = _$_EmoteListenerBaseActionController.startAction(
        name: '_EmoteListenerBase._reportEmote');
    try {
      return super._reportEmote(emote);
    } finally {
      _$_EmoteListenerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _filterEmoteHistory() {
    final _$actionInfo = _$_EmoteListenerBaseActionController.startAction(
        name: '_EmoteListenerBase._filterEmoteHistory');
    try {
      return super._filterEmoteHistory();
    } finally {
      _$_EmoteListenerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMaxEmoteHistoryEntryLifetimeSec(int seconds) {
    final _$actionInfo = _$_EmoteListenerBaseActionController.startAction(
        name: '_EmoteListenerBase.setMaxEmoteHistoryEntryLifetimeSec');
    try {
      return super.setMaxEmoteHistoryEntryLifetimeSec(seconds);
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
maxEmoteHistoryEntryLifetimeSec: ${maxEmoteHistoryEntryLifetimeSec},
emotes: ${emotes},
status: ${status},
ranking: ${ranking}
    ''';
  }
}
