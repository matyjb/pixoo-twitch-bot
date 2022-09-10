// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'pixoo_device.freezed.dart';
part 'pixoo_device.g.dart';

enum PixooSize { p16, p32, p64 }

@freezed
class PixooDevice with _$PixooDevice {
  const factory PixooDevice({
    required String DeviceName,
    required int DeviceId,
    required String DevicePrivateIP,
    required String DeviceMac,
  }) = _PixooDevice;

  factory PixooDevice.fromJson(Map<String, Object?> json) =>
      _$PixooDeviceFromJson(json);
}
