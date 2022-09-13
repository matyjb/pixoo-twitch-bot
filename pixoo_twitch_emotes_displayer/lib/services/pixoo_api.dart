import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pixoo_twitch_emotes_displayer/models/pixoo_device/pixoo_device.dart';

// http://doc.divoom-gz.com/web/#/12?page_id=195
class PixooAPI {
  static final Dio _dio = Dio();

  static Future<bool> playGifFile(String deviceIp, String emoteUrl) async {
    dynamic data = {
      "Command": "Device/PlayTFGif",
      "FileType": 2,
      "FileName": emoteUrl
    };
    try {
      await _dio.post('http://$deviceIp:80/post', data: data);
      return true;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  static Future<List<PixooDevice>> findSameLANDevices(
      String deviceIp, String emoteUrl) async {
    var response =
        await _dio.post('https://app.divoom-gz.com/Device/ReturnSameLANDevice');
    return (response.data["DeviceList"] as List<dynamic>)
        .map((e) => PixooDevice.fromJson(e))
        .toList();
  }
}
