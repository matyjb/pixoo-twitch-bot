// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pixoo_twitch_emotes_displayer/models/emote.dart';
part '../generated/emote_history_entry.freezed.dart';

@freezed
class EmoteHistoryEntry with _$EmoteHistoryEntry {
  const factory EmoteHistoryEntry({
    required Emote emote,
    required DateTime time,
  }) = _EmoteHistoryEntry;
}
