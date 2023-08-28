// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
part 'pixoo_device_raw.freezed.dart';
part 'pixoo_device_raw.g.dart';

@freezed
class PixooDeviceRaw with _$PixooDeviceRaw {
  const factory PixooDeviceRaw({
    required String DeviceName,
    required int DeviceId,
    required String DevicePrivateIP,
    required String DeviceMac,
  }) = _PixooDeviceRaw;

  factory PixooDeviceRaw.fromJson(Map<String, Object?> json) => _$PixooDeviceRawFromJson(json);
}
