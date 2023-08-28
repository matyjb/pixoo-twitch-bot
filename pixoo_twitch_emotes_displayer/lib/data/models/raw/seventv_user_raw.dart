// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
part 'seventv_user_raw.freezed.dart';
part 'seventv_user_raw.g.dart';

@freezed
class SevenTVUserRaw with _$SevenTVUserRaw {
  const factory SevenTVUserRaw({
    required String id,
    required String twitch_id,
    required String login,
    required String display_name,
    // required SevenTVRoleRaw role,
  }) = _SevenTVUserRaw;

  factory SevenTVUserRaw.fromJson(Map<String, Object?> json) => _$SevenTVUserRawFromJson(json);
}
