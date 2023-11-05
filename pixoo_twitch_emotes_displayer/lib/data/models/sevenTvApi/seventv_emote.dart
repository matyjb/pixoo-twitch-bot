// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/sevenTvApi/seventv_user.dart';
part 'seventv_emote.freezed.dart';
part 'seventv_emote.g.dart';

@freezed
class SevenTVEmote with _$SevenTVEmote {
  const factory SevenTVEmote({
    required String id,
    required String name,
    required SevenTVUser owner,
    required int visibility,
    required List visibility_simple,
    required String mime,
    required int status,
    required List<String> tags,
    required List<int> width,
    required List<int> height,
    required List<List<String>> urls,
  }) = _SevenTVEmote;

  factory SevenTVEmote.fromJson(Map<String, Object?> json) => _$SevenTVEmoteFromJson(json);
}
