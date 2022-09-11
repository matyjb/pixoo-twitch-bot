import 'package:dio/dio.dart';
import '../models/emote/emote.dart';

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

  static Future<List<Emote>> getChannelIdentifiers(String channelName) async {
    var response = await _dio
        .get('https://emotes.adamcy.pl/v1/channel/$channelName/id');
    return (response.data as List<dynamic>)
        .map((e) => Emote.fromJson(e))
        .toList();
  }
}
