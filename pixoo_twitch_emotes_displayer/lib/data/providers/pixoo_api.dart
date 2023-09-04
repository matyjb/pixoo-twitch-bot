import 'dart:convert';

import 'package:dio/dio.dart';

// http://doc.divoom-gz.com/web/#/12?page_id=195
// extension on Never acts as namespace
extension PixooAPI on Never {
  static final Dio _dio = Dio();

  // max 60 animation frames and 64 by 64 pixels
  static Future<Response> playGifFile(String deviceIp, String emoteUrl) {
    final String pixooDeviceUrl = 'http://$deviceIp/post';

    final dynamic data = {
      "Command": "Device/PlayTFGif",
      "FileType": 2,
      "FileName": Uri.parse(emoteUrl).toString()
    };
    return _dio.post(pixooDeviceUrl, data: jsonEncode(data));
  }

  static Future<Response<Map<String,dynamic>>> findSameLANDevices() {
    return _dio.post('https://app.divoom-gz.com/Device/ReturnSameLANDevice');
  }
}
