// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temotes_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TEmotesUser _$$_TEmotesUserFromJson(Map<String, dynamic> json) =>
    _$_TEmotesUser(
      id: json['id'] as int,
      login: json['login'] as String,
      displayName: json['display_name'] as String,
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$$_TEmotesUserToJson(_$_TEmotesUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'display_name': instance.displayName,
      'avatar': instance.avatar,
    };
