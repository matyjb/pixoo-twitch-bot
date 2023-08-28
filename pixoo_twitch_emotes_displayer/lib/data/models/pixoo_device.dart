// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/raw/pixoo_device_raw.dart';
part 'pixoo_device.freezed.dart';
part 'pixoo_device.g.dart';

enum PixooSize { x64 }

@freezed
class PixooDevice with _$PixooDevice {
  const factory PixooDevice({
    required String name,
    required int id,
    required String privateIP,
    required String macAdress,
  }) = _PixooDevice;

  factory PixooDevice.fromJson(Map<String, Object?> json) => _$PixooDeviceFromJson(json);

  factory PixooDevice.fromRaw(PixooDeviceRaw raw) => PixooDevice(
        name: raw.DeviceName,
        id: raw.DeviceId,
        privateIP: raw.DevicePrivateIP,
        macAdress: raw.DeviceMac,
      );
}
