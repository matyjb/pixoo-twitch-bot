// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixoo_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PixooDevice _$$_PixooDeviceFromJson(Map<String, dynamic> json) =>
    _$_PixooDevice(
      name: json['DeviceName'] as String,
      id: json['DeviceId'] as int,
      privateIP: json['DevicePrivateIP'] as String,
      macAdress: json['DeviceMac'] as String,
    );

Map<String, dynamic> _$$_PixooDeviceToJson(_$_PixooDevice instance) =>
    <String, dynamic>{
      'DeviceName': instance.name,
      'DeviceId': instance.id,
      'DevicePrivateIP': instance.privateIP,
      'DeviceMac': instance.macAdress,
    };
