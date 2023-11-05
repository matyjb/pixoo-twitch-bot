// ignore_for_file: non_constant_identifier_names
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/pixoo_device.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/sevenTvApi/seventv_emote.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/temotesApi/temotes_emote.dart';
import 'package:pixoo_twitch_emotes_displayer/helpers/constants.dart';
part 'ttv_emote.freezed.dart';
part 'ttv_emote.g.dart';

enum TtvEmoteProvider { ttv, sevenTv, bttv, ffz, unknown }

class TtvEmoteProviderConverter implements JsonConverter<TtvEmoteProvider, int> {
  const TtvEmoteProviderConverter();

  @override
  TtvEmoteProvider fromJson(int json) => switch (json) {
        0 => TtvEmoteProvider.ttv,
        1 => TtvEmoteProvider.sevenTv,
        2 => TtvEmoteProvider.bttv,
        3 => TtvEmoteProvider.ffz,
        _ => TtvEmoteProvider.unknown,
      };

  @override
  int toJson(TtvEmoteProvider data) => switch (data) {
        TtvEmoteProvider.ttv => 0,
        TtvEmoteProvider.sevenTv => 1,
        TtvEmoteProvider.bttv => 2,
        TtvEmoteProvider.ffz => 3,
        TtvEmoteProvider.unknown => -1,
      };
}

@freezed
class TtvEmote with _$TtvEmote {
  const TtvEmote._();

  const factory TtvEmote({
    required String id,
    @TtvEmoteProviderConverter() required TtvEmoteProvider provider,
    required String name,
    required String mime,
    required int origMaxWidth,
    required int origMaxHeight,
    required String maxQualityUrl,
  }) = _TtvEmote;

  factory TtvEmote.fromJson(Map<String, Object?> json) => _$TtvEmoteFromJson(json);

  factory TtvEmote.from7Tv(SevenTVEmote sevenTVEmote) => TtvEmote(
        id: "${sevenTVEmote.id}_${TtvEmoteProvider.sevenTv.name}",
        provider: TtvEmoteProvider.sevenTv,
        name: sevenTVEmote.name,
        mime: sevenTVEmote.mime,
        origMaxWidth: sevenTVEmote.width.last,
        origMaxHeight: sevenTVEmote.height.last,
        maxQualityUrl: sevenTVEmote.urls.last.last,
      );

  factory TtvEmote.fromTEmotes(TEmotesEmote tEmotesEmote) {
    final url = tEmotesEmote.urls
        .firstWhere((element) => element.size == "4x", orElse: () => tEmotesEmote.urls.last)
        .url;
    return TtvEmote(
      id: "${tEmotesEmote.code}_${tEmotesEmote.provider.name}_${url.hashCode}",
      provider: tEmotesEmote.provider,
      name: tEmotesEmote.code,
      //assumptions from there
      mime: "image/webp",
      origMaxWidth: 128,
      origMaxHeight: 128,
      maxQualityUrl: url,
    );
  }

  String fileName(PixooSize size) => encodeFileName("${id}_${size.name}");

  // download file and return full path to the image
  Future<String> download(String saveDir) async {
    final tmpFilePath = "$saveDir\\${encodeFileName(id)}";
    return Dio().download(maxQualityUrl, tmpFilePath).then((res) {
      final String ct = res.headers.map["content-type"]?.first ?? mime;
      // final String? cd = res.headers.map["content-disposition"]?.first;
      String originalExtension = ".webp";
      final RegExp imageMimeRegex = RegExp(r'image\/(\w+)');
      if (imageMimeRegex.hasMatch(ct)) {
        originalExtension = imageMimeRegex.allMatches(ct).first.group(1).toString();
      }
      // else {
      //   originalExtension =
      //       imageMimeRegex.allMatches(cd).last.group(0).toString().replaceAll("/", ".");
      // }
      final String newFilePath = "$tmpFilePath.$originalExtension";
      File(tmpFilePath).renameSync(newFilePath);
      final int? statusCode = res.statusCode;
      if (statusCode != null && statusCode >= 200 && statusCode < 300) {
        return newFilePath;
      } else {
        throw "Failed to download file";
      }
    });
  }
}
