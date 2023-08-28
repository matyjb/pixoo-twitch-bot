// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixoo_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PixooDevice _$$_PixooDeviceFromJson(Map<String, dynamic> json) =>
    _$_PixooDevice(
      name: json['name'] as String,
      id: json['id'] as int,
      privateIP: json['privateIP'] as String,
      macAdress: json['macAdress'] as String,
    );

Map<String, dynamic> _$$_PixooDeviceToJson(_$_PixooDevice instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'privateIP': instance.privateIP,
      'macAdress': instance.macAdress,
    };
