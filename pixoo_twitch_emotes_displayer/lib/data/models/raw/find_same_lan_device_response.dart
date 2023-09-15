// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/raw/pixoo_device_raw.dart';
part 'find_same_lan_device_response.freezed.dart';
part 'find_same_lan_device_response.g.dart';

@freezed
class FindSameLANDevicesResponse with _$FindSameLANDevicesResponse {
  const factory FindSameLANDevicesResponse({
    required int ReturnCode,
    required String ReturnMessage,
    required List<PixooDeviceRaw> DeviceList,
  }) = _FindSameLANDevicesResponse;

  factory FindSameLANDevicesResponse.fromJson(Map<String, Object?> json) =>
      _$FindSameLANDevicesResponseFromJson(json);
}
