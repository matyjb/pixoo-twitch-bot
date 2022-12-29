// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../models/channel_identifiers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChannelIdentifiers _$$_ChannelIdentifiersFromJson(
        Map<String, dynamic> json) =>
    _$_ChannelIdentifiers(
      id: json['id'] as int,
      login: json['login'] as String,
      display_name: json['display_name'] as String,
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$$_ChannelIdentifiersToJson(
        _$_ChannelIdentifiers instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'display_name': instance.display_name,
      'avatar': instance.avatar,
    };
