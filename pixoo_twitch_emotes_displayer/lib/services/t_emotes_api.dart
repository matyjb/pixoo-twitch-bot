import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pixoo_twitch_emotes_displayer/models/channel_identifiers.dart';
import '../models/emote.dart';

class TEmotesAPI {
  static final Dio _dio = Dio();

  static Future<List<Emote>> getEmotesForChannel(String channelName) async {
    var response = await _dio
        .get('https://emotes.adamcy.pl/v1/channel/$channelName/emotes/all');
    return (response.data as List<dynamic>)
        .map((e) => Emote.fromJson(e))
        .toList();
  }

  static Future<List<Emote>> getEmotesGlobal() async {
    var response =
        await _dio.get('https://emotes.adamcy.pl/v1/global/emotes/all');
    return (response.data as List<dynamic>)
        .map((e) => Emote.fromJson(e))
        .toList();
  }

  static Future<ChannelIdentifiers> getChannelIdentifiers(
      String channelName) async {
    var response =
        await _dio.get('https://emotes.adamcy.pl/v1/channel/$channelName/id');
    return ChannelIdentifiers.fromJson(response.data);
  }

  // returns path to created file
  static Future<String?> downloadFile(String url, String savePath) async {
    try {
      Response response = await _dio.download(url, savePath);
      String? ct = response.headers.map["content-type"]?.first;
      String? cd = response.headers.map["content-disposition"]?.first;
      String originalExtension;
      if(cd != null) {
        RegExp filenameRegex = RegExp(r'\.\w+');
        originalExtension =  filenameRegex.allMatches(cd).last.group(0).toString();
      }else{
        RegExp filenameRegex = RegExp(r'\/\w+');
        originalExtension = filenameRegex.allMatches(ct!).last.group(0).toString().replaceAll("/", ".");
      }
      String newFilePath = "$savePath$originalExtension";
      File(savePath).renameSync(newFilePath);
      int? statusCode = response.statusCode;
      if (statusCode != null && statusCode >= 200 && statusCode < 300) {
        return newFilePath;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
