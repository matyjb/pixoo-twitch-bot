import 'package:dio/dio.dart';

const String baseUrl = "https://api.7tv.app/v2";

class SevenTVApi {
  static final Dio _dio = Dio();

  static Future<Response<dynamic>> getUser(String userId) {
    return _dio.get("$baseUrl/users/$userId");
  }

  static Future<Response<dynamic>> getEmote(String emoteId) {
    return _dio.get("$baseUrl/emotes/$emoteId");
  }

  static Future<Response<List<dynamic>>> getChannelEmotes(String userId) {
    return _dio.get("$baseUrl/users/$userId/emotes");
  }

  static Future<Response<List<dynamic>>> getGlobalEmotes() {
    return _dio.get("$baseUrl/emotes/global");
  }
}
