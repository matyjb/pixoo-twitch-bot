// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seventv_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SevenTVUser _$$_SevenTVUserFromJson(Map<String, dynamic> json) =>
    _$_SevenTVUser(
      id: json['id'] as String,
      twitchId: json['twitch_id'] as String,
      login: json['login'] as String,
      displayName: json['display_name'] as String,
    );

Map<String, dynamic> _$$_SevenTVUserToJson(_$_SevenTVUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'twitch_id': instance.twitchId,
      'login': instance.login,
      'display_name': instance.displayName,
    };
