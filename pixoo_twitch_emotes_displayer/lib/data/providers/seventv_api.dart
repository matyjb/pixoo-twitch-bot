import 'package:dio/dio.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/raw/seventv_emote_raw.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/raw/seventv_user_raw.dart';

const String baseUrl = "https://api.7tv.app/v2";

class SevenTVApi {
  static final Dio _dio = Dio();

  static Future<Response<SevenTVUserRaw>> getUser(String login) {
    return _dio.get("$baseUrl/users/$login");
  }

  static Future<Response<SevenTVEmoteRaw>> getEmote(String emote) {
    return _dio.get("$baseUrl/emotes/$emote");
  }

  static Future<Response<List<SevenTVEmoteRaw>>> getChannelEmotes(String login) {
    return _dio.get("$baseUrl/users/$login/emotes");
  }

  static Future<Response<List<SevenTVEmoteRaw>>> getGlobalEmotes() {
    return _dio.get("$baseUrl/emotes/global");
  }
}
