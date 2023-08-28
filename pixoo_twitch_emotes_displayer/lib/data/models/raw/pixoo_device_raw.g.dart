// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixoo_device_raw.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PixooDeviceRaw _$$_PixooDeviceRawFromJson(Map<String, dynamic> json) =>
    _$_PixooDeviceRaw(
      DeviceName: json['DeviceName'] as String,
      DeviceId: json['DeviceId'] as int,
      DevicePrivateIP: json['DevicePrivateIP'] as String,
      DeviceMac: json['DeviceMac'] as String,
    );

Map<String, dynamic> _$$_PixooDeviceRawToJson(_$_PixooDeviceRaw instance) =>
    <String, dynamic>{
      'DeviceName': instance.DeviceName,
      'DeviceId': instance.DeviceId,
      'DevicePrivateIP': instance.DevicePrivateIP,
      'DeviceMac': instance.DeviceMac,
    };
