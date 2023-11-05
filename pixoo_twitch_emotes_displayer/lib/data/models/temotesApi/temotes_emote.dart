import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/temotesApi/temotes_url.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/ttv_emote.dart';
part 'temotes_emote.freezed.dart';
part 'temotes_emote.g.dart';

@freezed
class TEmotesEmote with _$TEmotesEmote {
  const factory TEmotesEmote({
    @TtvEmoteProviderConverter() required TtvEmoteProvider provider,
    required String code,
    required List<TEmotesUrl> urls,
  }) = _TEmotesEmote;

  factory TEmotesEmote.fromJson(Map<String, Object?> json) => _$TEmotesEmoteFromJson(json);
}
