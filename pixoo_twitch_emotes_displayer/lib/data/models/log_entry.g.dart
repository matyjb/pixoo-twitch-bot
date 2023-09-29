// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogEntry _$$_LogEntryFromJson(Map<String, dynamic> json) => _$_LogEntry(
      type: $enumDecode(_$LogEntryTypeEnumMap, json['type']),
      title: json['title'] as String,
      message: json['message'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$_LogEntryToJson(_$_LogEntry instance) =>
    <String, dynamic>{
      'type': _$LogEntryTypeEnumMap[instance.type]!,
      'title': instance.title,
      'message': instance.message,
      'timestamp': instance.timestamp.toIso8601String(),
    };

const _$LogEntryTypeEnumMap = {
  LogEntryType.info: 'info',
  LogEntryType.error: 'error',
  LogEntryType.action: 'action',
};
