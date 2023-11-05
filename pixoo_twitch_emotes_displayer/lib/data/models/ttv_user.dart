import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/sevenTvApi/seventv_user.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/temotesApi/temotes_user.dart';
part 'ttv_user.freezed.dart';
part 'ttv_user.g.dart';

@freezed
class TtvUser with _$TtvUser {
  const factory TtvUser({
    required String id,
    required String login,
    required String displayName,
    required String avatarUrl,
  }) = _TtvUser;

  factory TtvUser.fromJson(Map<String, Object?> json) => _$TtvUserFromJson(json);

  factory TtvUser.from7Tv(SevenTVUser user) => TtvUser(
        id: user.id,
        login: user.login,
        displayName: user.displayName,
        avatarUrl: "",
      );

  factory TtvUser.fromTEmotes(TEmotesUser user) => TtvUser(
        id: user.id.toString(),
        login: user.login,
        displayName: user.displayName,
        avatarUrl: user.avatar,
      );
}
