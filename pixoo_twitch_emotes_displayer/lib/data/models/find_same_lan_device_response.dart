// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/pixoo_device.dart';
part 'find_same_lan_device_response.freezed.dart';
part 'find_same_lan_device_response.g.dart';

@freezed
class FindSameLANDevicesResponse with _$FindSameLANDevicesResponse {
  const factory FindSameLANDevicesResponse({
    @JsonKey(name: "ReturnCode") required int returnCode,
    @JsonKey(name: "ReturnMessage") required String returnMessage,
    @JsonKey(name: "DeviceList") required List<PixooDevice> deviceList,
  }) = _FindSameLANDevicesResponse;

  factory FindSameLANDevicesResponse.fromJson(Map<String, Object?> json) =>
      _$FindSameLANDevicesResponseFromJson(json);
}
