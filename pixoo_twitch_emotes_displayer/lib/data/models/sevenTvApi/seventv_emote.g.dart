// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seventv_emote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SevenTVEmote _$$_SevenTVEmoteFromJson(Map<String, dynamic> json) =>
    _$_SevenTVEmote(
      id: json['id'] as String,
      name: json['name'] as String,
      owner: SevenTVUser.fromJson(json['owner'] as Map<String, dynamic>),
      visibility: json['visibility'] as int,
      visibility_simple: json['visibility_simple'] as List<dynamic>,
      mime: json['mime'] as String,
      status: json['status'] as int,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      width: (json['width'] as List<dynamic>).map((e) => e as int).toList(),
      height: (json['height'] as List<dynamic>).map((e) => e as int).toList(),
      urls: (json['urls'] as List<dynamic>)
          .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
    );

Map<String, dynamic> _$$_SevenTVEmoteToJson(_$_SevenTVEmote instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'owner': instance.owner,
      'visibility': instance.visibility,
      'visibility_simple': instance.visibility_simple,
      'mime': instance.mime,
      'status': instance.status,
      'tags': instance.tags,
      'width': instance.width,
      'height': instance.height,
      'urls': instance.urls,
    };
