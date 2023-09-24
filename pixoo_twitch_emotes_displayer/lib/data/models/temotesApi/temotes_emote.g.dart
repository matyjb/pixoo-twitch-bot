// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temotes_emote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TEmotesEmote _$$_TEmotesEmoteFromJson(Map<String, dynamic> json) =>
    _$_TEmotesEmote(
      provider:
          const TtvEmoteProviderConverter().fromJson(json['provider'] as int),
      code: json['code'] as String,
      urls: (json['urls'] as List<dynamic>)
          .map((e) => TEmotesUrl.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TEmotesEmoteToJson(_$_TEmotesEmote instance) =>
    <String, dynamic>{
      'provider': const TtvEmoteProviderConverter().toJson(instance.provider),
      'code': instance.code,
      'urls': instance.urls,
    };
