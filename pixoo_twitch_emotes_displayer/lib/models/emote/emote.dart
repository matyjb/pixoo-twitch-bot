import 'package:freezed_annotation/freezed_annotation.dart';
part 'emote.freezed.dart';

enum EmoteSize { x1, x2, x4 }
enum EmoteProvider { twitch, seventv, bttv, ffz }

@freezed
class EmoteUrl with _$EmoteUrl {
  const factory EmoteUrl({
    required EmoteSize size,
    required String url,
  }) = _EmoteUrl;

  factory EmoteUrl.fromJson(Map<String, Object?> json) {
    EmoteSize size = EmoteSize.x1;
    switch (json['size']) {
      case "x1":
        size = EmoteSize.x1;
        break;
      case "x2":
        size = EmoteSize.x2;
        break;
      case "x3":
        size = EmoteSize.x4;
        break;
      default:
    }
    return EmoteUrl(
      size: size,
      url: json['url'] as String,
    );
  }
}

@freezed
class Emote with _$Emote {
  const factory Emote({
    required EmoteProvider provider,
    required String code,
    required List<EmoteUrl> urls,
  }) = _Emote;

  factory Emote.fromJson(Map<String, Object?> json) {
    return Emote(
      provider: EmoteProvider.values[json['provider'] as int],
      code: json['code'] as String,
      urls: (json['urls'] as List<dynamic>)
          .map((e) => EmoteUrl.fromJson(e))
          .toList(),
    );
  }
}
