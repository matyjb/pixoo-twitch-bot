// ignore_for_file: non_constant_identifier_names
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/pixoo_device.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/sevenTvApi/seventv_emote_raw.dart';
part 'ttv_emote.freezed.dart';
part 'ttv_emote.g.dart';

enum TtvEmoteProvider { sevenTv, ttv, bttv, ffz, unknown }

@freezed
class TtvEmote with _$TtvEmote {
  const TtvEmote._();

  const factory TtvEmote({
    required String id,
    required TtvEmoteProvider provider,
    required String name,
    required String mime,
    required int origMaxWidth,
    required int origMaxHeight,
    required String maxQualityUrl,
  }) = _TtvEmote;

  factory TtvEmote.fromJson(Map<String, Object?> json) => _$TtvEmoteFromJson(json);

  factory TtvEmote.from7TvRaw(SevenTVEmoteRaw raw) => TtvEmote(
        id: "${raw.id}_${TtvEmoteProvider.sevenTv.name}",
        provider: TtvEmoteProvider.sevenTv,
        name: raw.name,
        mime: raw.mime,
        origMaxWidth: raw.width.last,
        origMaxHeight: raw.height.last,
        maxQualityUrl: raw.urls.last.last,
      );

  String fileName(PixooSize size) => "${id}_${size.name}";

  // download file and return full path to the image
  Future<String> download(String saveDir) async {
    final tmpFilePath = "$saveDir\\$id";
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
