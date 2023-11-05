// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'net_interface.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NetInterface _$$_NetInterfaceFromJson(Map<String, dynamic> json) =>
    _$_NetInterface(
      name: json['name'] as String,
      addresses:
          (json['addresses'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_NetInterfaceToJson(_$_NetInterface instance) =>
    <String, dynamic>{
      'name': instance.name,
      'addresses': instance.addresses,
    };
