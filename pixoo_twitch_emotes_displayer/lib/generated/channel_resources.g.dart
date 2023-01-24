// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../store/channel_resources.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ChannelResources on _ChannelResourcesBase, Store {
  late final _$emotesAtom =
      Atom(name: '_ChannelResourcesBase.emotes', context: context);

  @override
  ObservableMap<String, Emote> get emotes {
    _$emotesAtom.reportRead();
    return super.emotes;
  }

  @override
  set emotes(ObservableMap<String, Emote> value) {
    _$emotesAtom.reportWrite(value, super.emotes, () {
      super.emotes = value;
    });
  }

  late final _$emoteHistoryAtom =
      Atom(name: '_ChannelResourcesBase.emoteHistory', context: context);

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

  late final _$_ChannelResourcesBaseActionController =
      ActionController(name: '_ChannelResourcesBase', context: context);

  @override
  dynamic setEmotes(Map<String, Emote> value) {
    final _$actionInfo = _$_ChannelResourcesBaseActionController.startAction(
        name: '_ChannelResourcesBase.setEmotes');
    try {
      return super.setEmotes(value);
    } finally {
      _$_ChannelResourcesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEmoteHistory(List<EmoteHistoryEntry> value) {
    final _$actionInfo = _$_ChannelResourcesBaseActionController.startAction(
        name: '_ChannelResourcesBase.setEmoteHistory');
    try {
      return super.setEmoteHistory(value);
    } finally {
      _$_ChannelResourcesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic reportEmote(Emote emote) {
    final _$actionInfo = _$_ChannelResourcesBaseActionController.startAction(
        name: '_ChannelResourcesBase.reportEmote');
    try {
      return super.reportEmote(emote);
    } finally {
      _$_ChannelResourcesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
emotes: ${emotes},
emoteHistory: ${emoteHistory}
    ''';
  }
}
