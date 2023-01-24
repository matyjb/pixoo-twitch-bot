// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../store/emotes_manager.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EmotesManager on _EmoteManagerBase, Store {
  late final _$rankingAtom =
      Atom(name: '_EmoteManagerBase.ranking', context: context);

  @override
  List<MapEntry<Emote, Pair<DateTime, int>>> get ranking {
    _$rankingAtom.reportRead();
    return super.ranking;
  }

  @override
  set ranking(List<MapEntry<Emote, Pair<DateTime, int>>> value) {
    _$rankingAtom.reportWrite(value, super.ranking, () {
      super.ranking = value;
    });
  }

  late final _$displayedEmoteAtom =
      Atom(name: '_EmoteManagerBase.displayedEmote', context: context);

  @override
  Emote? get displayedEmote {
    _$displayedEmoteAtom.reportRead();
    return super.displayedEmote;
  }

  @override
  set displayedEmote(Emote? value) {
    _$displayedEmoteAtom.reportWrite(value, super.displayedEmote, () {
      super.displayedEmote = value;
    });
  }

  late final _$emotesPreparedAtom =
      Atom(name: '_EmoteManagerBase.emotesPrepared', context: context);

  @override
  ObservableSet<Emote> get emotesPrepared {
    _$emotesPreparedAtom.reportRead();
    return super.emotesPrepared;
  }

  @override
  set emotesPrepared(ObservableSet<Emote> value) {
    _$emotesPreparedAtom.reportWrite(value, super.emotesPrepared, () {
      super.emotesPrepared = value;
    });
  }

  late final _$emotesFailedAtom =
      Atom(name: '_EmoteManagerBase.emotesFailed', context: context);

  @override
  ObservableSet<Emote> get emotesFailed {
    _$emotesFailedAtom.reportRead();
    return super.emotesFailed;
  }

  @override
  set emotesFailed(ObservableSet<Emote> value) {
    _$emotesFailedAtom.reportWrite(value, super.emotesFailed, () {
      super.emotesFailed = value;
    });
  }

  late final _$_EmoteManagerBaseActionController =
      ActionController(name: '_EmoteManagerBase', context: context);

  @override
  List<MapEntry<Emote, Pair<DateTime, int>>> _setRanking(
      List<MapEntry<Emote, Pair<DateTime, int>>> value) {
    final _$actionInfo = _$_EmoteManagerBaseActionController.startAction(
        name: '_EmoteManagerBase._setRanking');
    try {
      return super._setRanking(value);
    } finally {
      _$_EmoteManagerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool _refreshDisplayedEmote() {
    final _$actionInfo = _$_EmoteManagerBaseActionController.startAction(
        name: '_EmoteManagerBase._refreshDisplayedEmote');
    try {
      return super._refreshDisplayedEmote();
    } finally {
      _$_EmoteManagerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  ObservableSet<Emote> setPreparedEmotes(Set<Emote> value) {
    final _$actionInfo = _$_EmoteManagerBaseActionController.startAction(
        name: '_EmoteManagerBase.setPreparedEmotes');
    try {
      return super.setPreparedEmotes(value);
    } finally {
      _$_EmoteManagerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  ObservableSet<Emote> setEmotesFailed(Set<Emote> value) {
    final _$actionInfo = _$_EmoteManagerBaseActionController.startAction(
        name: '_EmoteManagerBase.setEmotesFailed');
    try {
      return super.setEmotesFailed(value);
    } finally {
      _$_EmoteManagerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
ranking: ${ranking},
displayedEmote: ${displayedEmote},
emotesPrepared: ${emotesPrepared},
emotesFailed: ${emotesFailed}
    ''';
  }
}
