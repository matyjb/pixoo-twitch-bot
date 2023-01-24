import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pixoo_twitch_emotes_displayer/models/pixoo_device.dart';

// http://doc.divoom-gz.com/web/#/12?page_id=195
class PixooAPI {
  static final Dio _dio = Dio();

  // max 60 animation frames and 64 by 64 pixels
  static Future<bool> playGifFile(String deviceIp, String emoteUrl) async {
    String pixooDeviceUrl = 'http://$deviceIp/post';

    dynamic data = {
      "Command": "Device/PlayTFGif",
      "FileType": 2,
      "FileName": Uri.parse(emoteUrl).toString()
    };
    try {
      await _dio.post(pixooDeviceUrl, data: jsonEncode(data)).then((value) {
        if(kDebugMode) {
          print("[${value.statusCode} EMOTE SEND] $emoteUrl -> $pixooDeviceUrl");
        }
        return value;
      });
      return true;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  static Future<List<PixooDevice>> findSameLANDevices() async {
    var response =
        await _dio.post('https://app.divoom-gz.com/Device/ReturnSameLANDevice');
    return (response.data["DeviceList"] as List<dynamic>)
        .map((e) => PixooDevice.fromJson(e))
        .toList();
  }
}
