// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
part 'pixoo_device.freezed.dart';
part 'pixoo_device.g.dart';

enum PixooSize { x64 }

@freezed
class PixooDevice with _$PixooDevice {
  const factory PixooDevice({
    @JsonKey(name: "DeviceName") required String name,
    @JsonKey(name: "DeviceId") required int id,
    @JsonKey(name: "DevicePrivateIP") required String privateIP,
    @JsonKey(name: "DeviceMac") required String macAdress,
  }) = _PixooDevice;

  factory PixooDevice.fromJson(Map<String, Object?> json) => _$PixooDeviceFromJson(json);
}
