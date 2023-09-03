// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/sevenTvApi/seventv_user_raw.dart';
part 'seventv_user.freezed.dart';
part 'seventv_user.g.dart';

@freezed
class SevenTVUser with _$SevenTVUser {
  const factory SevenTVUser({
    required String id,
    required String twitchId,
    required String login,
    required String displayName,
    // required SevenTVRole role,
  }) = _SevenTVUser;

  factory SevenTVUser.fromJson(Map<String, Object?> json) => _$SevenTVUserFromJson(json);

  factory SevenTVUser.fromRaw(SevenTVUserRaw raw) => SevenTVUser(
        id: raw.id,
        twitchId: raw.twitch_id,
        login: raw.login,
        displayName: raw.display_name,
      );
}
