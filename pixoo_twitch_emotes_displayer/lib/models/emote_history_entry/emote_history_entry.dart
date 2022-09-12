// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

import '../emote/emote.dart';
part 'emote_history_entry.freezed.dart';

@freezed
class EmoteHistoryEntry with _$EmoteHistoryEntry {
  const factory EmoteHistoryEntry({
    required Emote emote,
    required DateTime time,
  }) = _EmoteHistoryEntry;
}