// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsState _$$_SettingsStateFromJson(Map<String, dynamic> json) =>
    _$_SettingsState(
      apiKey: json['apiKey'] as String?,
      channelName: json['channelName'] as String?,
      selectedPixooDevice: json['selectedPixooDevice'] == null
          ? null
          : PixooDevice.fromJson(
              json['selectedPixooDevice'] as Map<String, dynamic>),
      selectedNetworkInterface: json['selectedNetworkInterface'] == null
          ? null
          : NetInterface.fromJson(
              json['selectedNetworkInterface'] as Map<String, dynamic>),
      bufferSize: json['bufferSize'] as int? ?? 25,
      themeMode: json['themeMode'] == null
          ? ThemeMode.system
          : const ThemeModeJsonConverter()
              .fromJson(json['themeMode'] as String),
    );

Map<String, dynamic> _$$_SettingsStateToJson(_$_SettingsState instance) =>
    <String, dynamic>{
      'apiKey': instance.apiKey,
      'channelName': instance.channelName,
      'selectedPixooDevice': instance.selectedPixooDevice,
      'selectedNetworkInterface': instance.selectedNetworkInterface,
      'bufferSize': instance.bufferSize,
      'themeMode': const ThemeModeJsonConverter().toJson(instance.themeMode),
    };
