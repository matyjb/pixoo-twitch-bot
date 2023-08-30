part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    String? apiKey,
    String? channelName,
    PixooDevice? selectedPixooDevice,
    NetInterface? selectedNetworkInterface,
    @Default(25) int bufferSize,
    @ThemeModeJsonConverter() @Default(ThemeMode.system) ThemeMode themeMode,
  }) = _SettingsState;

  factory SettingsState.fromJson(Map<String, Object?> json) => _$SettingsStateFromJson(json);
}
