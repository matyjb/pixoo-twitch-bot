// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
part 'seventv_user.freezed.dart';
part 'seventv_user.g.dart';

@freezed
class SevenTVUser with _$SevenTVUser {
  const factory SevenTVUser({
    required String id,
    @JsonKey(name: "twitch_id") required String twitchId,
    required String login,
    @JsonKey(name: "display_name") required String displayName,
    // required SevenTVRole role,
  }) = _SevenTVUser;

  factory SevenTVUser.fromJson(Map<String, Object?> json) => _$SevenTVUserFromJson(json);
}
