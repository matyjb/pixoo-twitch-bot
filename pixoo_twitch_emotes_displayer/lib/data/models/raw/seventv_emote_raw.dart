// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/raw/seventv_user_raw.dart';
part 'seventv_emote_raw.freezed.dart';
part 'seventv_emote_raw.g.dart';

@freezed
class SevenTVEmoteRaw with _$SevenTVEmoteRaw {
  const factory SevenTVEmoteRaw({
    required String id,
    required String name,
    required SevenTVUserRaw owner,
    required int visibility,
    required List visibility_simple,
    required String mime,
    required int status,
    required List<String> tags,
    required List<int> width,
    required List<int> height,
    required List<List<String>> urls,
  }) = _SevenTVEmoteRaw;

  factory SevenTVEmoteRaw.fromJson(Map<String, Object?> json) => _$SevenTVEmoteRawFromJson(json);
}
