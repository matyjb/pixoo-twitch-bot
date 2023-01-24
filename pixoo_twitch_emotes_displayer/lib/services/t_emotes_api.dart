import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pixoo_twitch_emotes_displayer/models/channel_identifiers.dart';
import 'package:pixoo_twitch_emotes_displayer/models/emote.dart';

// ignore: avoid_classes_with_only_static_members
class TEmotesAPI {
  static final Dio _dio = Dio();

  static Future<List<Emote>> getEmotesForChannel(String channelName) async {
    final response = await _dio
        .get('https://emotes.adamcy.pl/v1/channel/$channelName/emotes/all');
    return (response.data as List<dynamic>)
        .map((e) => Emote.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  static Future<List<Emote>> getEmotesGlobal() async {
    final response =
        await _dio.get('https://emotes.adamcy.pl/v1/global/emotes/all');
    return (response.data as List<dynamic>)
        .map((e) => Emote.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  static Future<ChannelIdentifiers> getChannelIdentifiers(
    String channelName,
  ) async {
    final response =
        await _dio.get('https://emotes.adamcy.pl/v1/channel/$channelName/id');
    return ChannelIdentifiers.fromJson(response.data as Map<String, dynamic>);
  }

  // returns path to created file
  static Future<String> downloadFile(String url, String savePath) async {
    final Response response = await _dio.download(url, savePath);
    final String? ct = response.headers.map["content-type"]?.first;
    final String? cd = response.headers.map["content-disposition"]?.first;
    String originalExtension;
    if (cd != null) {
      final RegExp filenameRegex = RegExp(r'\.\w+');
      originalExtension = filenameRegex.allMatches(cd).last.group(0).toString();
    } else {
      final RegExp filenameRegex = RegExp(r'\/\w+');
      originalExtension = filenameRegex
          .allMatches(ct!)
          .last
          .group(0)
          .toString()
          .replaceAll("/", ".");
    }
    final String newFilePath = "$savePath$originalExtension";
    File(savePath).renameSync(newFilePath);
    final int? statusCode = response.statusCode;
    if (statusCode != null && statusCode >= 200 && statusCode < 300) {
      return newFilePath;
    } else {
      throw "Failed to download file";
    }
  }
}
