// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_same_lan_device_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FindSameLANDevicesResponse _$$_FindSameLANDevicesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FindSameLANDevicesResponse(
      ReturnCode: json['ReturnCode'] as int,
      ReturnMessage: json['ReturnMessage'] as String,
      DeviceList: (json['DeviceList'] as List<dynamic>)
          .map((e) => PixooDeviceRaw.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FindSameLANDevicesResponseToJson(
        _$_FindSameLANDevicesResponse instance) =>
    <String, dynamic>{
      'ReturnCode': instance.ReturnCode,
      'ReturnMessage': instance.ReturnMessage,
      'DeviceList': instance.DeviceList,
    };
