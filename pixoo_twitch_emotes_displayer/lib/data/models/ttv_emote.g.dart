// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ttv_emote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TtvEmote _$$_TtvEmoteFromJson(Map<String, dynamic> json) => _$_TtvEmote(
      id: json['id'] as String,
      provider:
          const TtvEmoteProviderConverter().fromJson(json['provider'] as int),
      name: json['name'] as String,
      mime: json['mime'] as String,
      origMaxWidth: json['origMaxWidth'] as int,
      origMaxHeight: json['origMaxHeight'] as int,
      maxQualityUrl: json['maxQualityUrl'] as String,
    );

Map<String, dynamic> _$$_TtvEmoteToJson(_$_TtvEmote instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provider': const TtvEmoteProviderConverter().toJson(instance.provider),
      'name': instance.name,
      'mime': instance.mime,
      'origMaxWidth': instance.origMaxWidth,
      'origMaxHeight': instance.origMaxHeight,
      'maxQualityUrl': instance.maxQualityUrl,
    };
