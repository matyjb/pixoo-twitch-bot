import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_msg.freezed.dart';
part 'twitch_msg.g.dart';

enum MsgType {msg, unknown}

@freezed
class TwitchMessage with _$TwitchMessage {
  const factory TwitchMessage({
    required MsgType type,
    required String author,
    required String content,
  }) = _TwitchMessage;

  factory TwitchMessage.fromJson(Map<String, Object?> json) => _$TwitchMessageFromJson(json);
}