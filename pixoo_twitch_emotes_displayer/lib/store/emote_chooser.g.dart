// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emote_chooser.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EmoteChooser on _EmoteChooserBase, Store {
  late final _$emotesFilePathsAtom =
      Atom(name: '_EmoteChooserBase.emotesFilePaths', context: context);

  @override
  List<String> get emotesFilePaths {
    _$emotesFilePathsAtom.reportRead();
    return super.emotesFilePaths;
  }

  @override
  set emotesFilePaths(List<String> value) {
    _$emotesFilePathsAtom.reportWrite(value, super.emotesFilePaths, () {
      super.emotesFilePaths = value;
    });
  }

  late final _$displayedEmoteAtom =
      Atom(name: '_EmoteChooserBase.displayedEmote', context: context);

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

  late final _$_EmoteChooserBaseActionController =
      ActionController(name: '_EmoteChooserBase', context: context);

  @override
  void setEmotesFiles(List<String> paths) {
    final _$actionInfo = _$_EmoteChooserBaseActionController.startAction(
        name: '_EmoteChooserBase.setEmotesFiles');
    try {
      return super.setEmotesFiles(paths);
    } finally {
      _$_EmoteChooserBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refreshDisplayedEmote() {
    final _$actionInfo = _$_EmoteChooserBaseActionController.startAction(
        name: '_EmoteChooserBase.refreshDisplayedEmote');
    try {
      return super.refreshDisplayedEmote();
    } finally {
      _$_EmoteChooserBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
emotesFilePaths: ${emotesFilePaths},
displayedEmote: ${displayedEmote}
    ''';
  }
}
