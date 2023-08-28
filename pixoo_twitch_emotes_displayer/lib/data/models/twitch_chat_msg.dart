import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_chat_msg.freezed.dart';
part 'twitch_chat_msg.g.dart';

enum MsgType { msg, unknown }

@freezed
class TwitchMessage with _$TwitchMessage {
  const factory TwitchMessage({
    required MsgType type,
    required String author,
    required String content,
  }) = _TwitchMessage;

  factory TwitchMessage.fromJson(Map<String, Object?> json) => _$TwitchMessageFromJson(json);
  factory TwitchMessage.fromLine(String line) {
    // :dandihere!dandihere@dandihere.tmi.twitch.tv PRIVMSG #kasia_22 :ja bym w wowa mega popykał :)
    final String trimmedLine = line.trim();
    final String? authorLine = RegExp(r'@.+\.tmi\.twitch\.tv').firstMatch(trimmedLine)?[0];
    final String? contentLine = RegExp(r'PRIVMSG #[^\s]+ :.+$').firstMatch(trimmedLine)?[0];
    return TwitchMessage(
      type: contentLine != null ? MsgType.msg : MsgType.unknown,
      author: authorLine != null
          ? authorLine.replaceAll(".tmi.twitch.tv", "").substring(1)
          : "@unknown",
      content: contentLine != null
          ? contentLine.replaceFirst(RegExp(r'PRIVMSG #[^\s]+ :'), "")
          : "#Could not parse",
    );
  }
}
