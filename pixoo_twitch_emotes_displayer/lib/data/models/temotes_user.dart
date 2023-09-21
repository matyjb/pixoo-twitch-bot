// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
part 'temotes_user.freezed.dart';
part 'temotes_user.g.dart';

@freezed
class TEmotesUser with _$TEmotesUser {
  const factory TEmotesUser({
    required int id,
    required String login,
    @JsonKey(name: "display_name") required String displayName,
    required String avatar,
  }) = _TEmotesUser;

  factory TEmotesUser.fromJson(Map<String, Object?> json) => _$TEmotesUserFromJson(json);
}
