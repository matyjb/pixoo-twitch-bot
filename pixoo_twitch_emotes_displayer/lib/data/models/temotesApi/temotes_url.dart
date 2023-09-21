import 'package:freezed_annotation/freezed_annotation.dart';
part 'temotes_url.freezed.dart';
part 'temotes_url.g.dart';

@freezed
class TEmotesUrl with _$TEmotesUrl {
  const factory TEmotesUrl({
    required String size,
    required String url,
  }) = _TEmotesUrl;

  factory TEmotesUrl.fromJson(Map<String, Object?> json) => _$TEmotesUrlFromJson(json);
}
