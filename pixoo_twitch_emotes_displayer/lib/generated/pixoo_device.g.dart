// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../models/pixoo_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PixooDevice _$$_PixooDeviceFromJson(Map<String, dynamic> json) =>
    _$_PixooDevice(
      DeviceName: json['DeviceName'] as String,
      DeviceId: json['DeviceId'] as int,
      DevicePrivateIP: json['DevicePrivateIP'] as String,
      DeviceMac: json['DeviceMac'] as String,
    );

Map<String, dynamic> _$$_PixooDeviceToJson(_$_PixooDevice instance) =>
    <String, dynamic>{
      'DeviceName': instance.DeviceName,
      'DeviceId': instance.DeviceId,
      'DevicePrivateIP': instance.DevicePrivateIP,
      'DeviceMac': instance.DeviceMac,
    };
