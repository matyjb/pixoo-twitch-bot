// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_same_lan_device_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FindSameLANDevicesResponse _$$_FindSameLANDevicesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FindSameLANDevicesResponse(
      returnCode: json['ReturnCode'] as int,
      returnMessage: json['ReturnMessage'] as String,
      deviceList: (json['DeviceList'] as List<dynamic>)
          .map((e) => PixooDevice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FindSameLANDevicesResponseToJson(
        _$_FindSameLANDevicesResponse instance) =>
    <String, dynamic>{
      'ReturnCode': instance.returnCode,
      'ReturnMessage': instance.returnMessage,
      'DeviceList': instance.deviceList,
    };
