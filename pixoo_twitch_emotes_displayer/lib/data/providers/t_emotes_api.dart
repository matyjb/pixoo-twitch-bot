// ignore_for_file: file_names

import 'package:dio/dio.dart';

const String baseUrl = "https://emotes.adamcy.pl/v1";

class TEmotesApi {
  static final Dio _dio = Dio();

  static Future<Response<dynamic>> getUser(String channelName) {
    return _dio.get("$baseUrl/channel/$channelName/id");
  }

  static Future<Response<List<dynamic>>> getChannelEmotes(String channelName) {
    return _dio.get("$baseUrl/channel/$channelName/emotes/all");
  }

  static Future<Response<List<dynamic>>> getGlobalEmotes() {
    return _dio.get("$baseUrl/global/emotes/all");
  }
}