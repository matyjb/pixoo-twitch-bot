import 'package:pixoo_twitch_emotes_displayer/data/models/pixoo_device.dart';
import 'package:pixoo_twitch_emotes_displayer/data/providers/pixoo_api.dart';

class PixooDeviceRepo {
  static Future<List<PixooDevice>> getSameLANDevices() {
    return PixooAPI.findSameLANDevices().then(
      (res) => res.data != null ? res.data!.DeviceList.map(PixooDevice.fromRaw).toList() : [],
    );
  }
}
