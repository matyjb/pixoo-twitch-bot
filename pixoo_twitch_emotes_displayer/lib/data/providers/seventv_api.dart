import 'package:dio/dio.dart';

const String baseUrl = "https://api.7tv.app/v2";

class SevenTVApi {
  static final Dio _dio = Dio();

  static Future<Response<dynamic>> getUser(String login) {
    return _dio.get("$baseUrl/users/$login");
  }

  static Future<Response<dynamic>> getEmote(String emote) {
    return _dio.get("$baseUrl/emotes/$emote");
  }

  static Future<Response<List<dynamic>>> getChannelEmotes(String login) {
    return _dio.get("$baseUrl/users/$login/emotes");
  }

  static Future<Response<List<dynamic>>> getGlobalEmotes() {
    return _dio.get("$baseUrl/emotes/global");
  }
}
