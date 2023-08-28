// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_chat_msg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TwitchMessage _$$_TwitchMessageFromJson(Map<String, dynamic> json) =>
    _$_TwitchMessage(
      type: $enumDecode(_$MsgTypeEnumMap, json['type']),
      author: json['author'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_TwitchMessageToJson(_$_TwitchMessage instance) =>
    <String, dynamic>{
      'type': _$MsgTypeEnumMap[instance.type]!,
      'author': instance.author,
      'content': instance.content,
    };

const _$MsgTypeEnumMap = {
  MsgType.msg: 'msg',
  MsgType.unknown: 'unknown',
};
