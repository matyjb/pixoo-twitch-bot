// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingsState _$SettingsStateFromJson(Map<String, dynamic> json) {
  return _SettingsState.fromJson(json);
}

/// @nodoc
mixin _$SettingsState {
  String? get apiKey => throw _privateConstructorUsedError;
  String? get channelName => throw _privateConstructorUsedError;
  PixooDevice? get selectedPixooDevice => throw _privateConstructorUsedError;
  NetInterface? get selectedNetworkInterface =>
      throw _privateConstructorUsedError;
  int get bufferSize => throw _privateConstructorUsedError;
  @ThemeModeJsonConverter()
  ThemeMode get themeMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call(
      {String? apiKey,
      String? channelName,
      PixooDevice? selectedPixooDevice,
      NetInterface? selectedNetworkInterface,
      int bufferSize,
      @ThemeModeJsonConverter() ThemeMode themeMode});

  $PixooDeviceCopyWith<$Res>? get selectedPixooDevice;
  $NetInterfaceCopyWith<$Res>? get selectedNetworkInterface;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = freezed,
    Object? channelName = freezed,
    Object? selectedPixooDevice = freezed,
    Object? selectedNetworkInterface = freezed,
    Object? bufferSize = null,
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      apiKey: freezed == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedPixooDevice: freezed == selectedPixooDevice
          ? _value.selectedPixooDevice
          : selectedPixooDevice // ignore: cast_nullable_to_non_nullable
              as PixooDevice?,
      selectedNetworkInterface: freezed == selectedNetworkInterface
          ? _value.selectedNetworkInterface
          : selectedNetworkInterface // ignore: cast_nullable_to_non_nullable
              as NetInterface?,
      bufferSize: null == bufferSize
          ? _value.bufferSize
          : bufferSize // ignore: cast_nullable_to_non_nullable
              as int,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PixooDeviceCopyWith<$Res>? get selectedPixooDevice {
    if (_value.selectedPixooDevice == null) {
      return null;
    }

    return $PixooDeviceCopyWith<$Res>(_value.selectedPixooDevice!, (value) {
      return _then(_value.copyWith(selectedPixooDevice: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NetInterfaceCopyWith<$Res>? get selectedNetworkInterface {
    if (_value.selectedNetworkInterface == null) {
      return null;
    }

    return $NetInterfaceCopyWith<$Res>(_value.selectedNetworkInterface!,
        (value) {
      return _then(_value.copyWith(selectedNetworkInterface: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$_SettingsStateCopyWith(
          _$_SettingsState value, $Res Function(_$_SettingsState) then) =
      __$$_SettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? apiKey,
      String? channelName,
      PixooDevice? selectedPixooDevice,
      NetInterface? selectedNetworkInterface,
      int bufferSize,
      @ThemeModeJsonConverter() ThemeMode themeMode});

  @override
  $PixooDeviceCopyWith<$Res>? get selectedPixooDevice;
  @override
  $NetInterfaceCopyWith<$Res>? get selectedNetworkInterface;
}

/// @nodoc
class __$$_SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$_SettingsState>
    implements _$$_SettingsStateCopyWith<$Res> {
  __$$_SettingsStateCopyWithImpl(
      _$_SettingsState _value, $Res Function(_$_SettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = freezed,
    Object? channelName = freezed,
    Object? selectedPixooDevice = freezed,
    Object? selectedNetworkInterface = freezed,
    Object? bufferSize = null,
    Object? themeMode = null,
  }) {
    return _then(_$_SettingsState(
      apiKey: freezed == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedPixooDevice: freezed == selectedPixooDevice
          ? _value.selectedPixooDevice
          : selectedPixooDevice // ignore: cast_nullable_to_non_nullable
              as PixooDevice?,
      selectedNetworkInterface: freezed == selectedNetworkInterface
          ? _value.selectedNetworkInterface
          : selectedNetworkInterface // ignore: cast_nullable_to_non_nullable
              as NetInterface?,
      bufferSize: null == bufferSize
          ? _value.bufferSize
          : bufferSize // ignore: cast_nullable_to_non_nullable
              as int,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SettingsState implements _SettingsState {
  const _$_SettingsState(
      {this.apiKey,
      this.channelName,
      this.selectedPixooDevice,
      this.selectedNetworkInterface,
      this.bufferSize = 25,
      @ThemeModeJsonConverter() this.themeMode = ThemeMode.system});

  factory _$_SettingsState.fromJson(Map<String, dynamic> json) =>
      _$$_SettingsStateFromJson(json);

  @override
  final String? apiKey;
  @override
  final String? channelName;
  @override
  final PixooDevice? selectedPixooDevice;
  @override
  final NetInterface? selectedNetworkInterface;
  @override
  @JsonKey()
  final int bufferSize;
  @override
  @JsonKey()
  @ThemeModeJsonConverter()
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'SettingsState(apiKey: $apiKey, channelName: $channelName, selectedPixooDevice: $selectedPixooDevice, selectedNetworkInterface: $selectedNetworkInterface, bufferSize: $bufferSize, themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsState &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.selectedPixooDevice, selectedPixooDevice) ||
                other.selectedPixooDevice == selectedPixooDevice) &&
            (identical(
                    other.selectedNetworkInterface, selectedNetworkInterface) ||
                other.selectedNetworkInterface == selectedNetworkInterface) &&
            (identical(other.bufferSize, bufferSize) ||
                other.bufferSize == bufferSize) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, apiKey, channelName,
      selectedPixooDevice, selectedNetworkInterface, bufferSize, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      __$$_SettingsStateCopyWithImpl<_$_SettingsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingsStateToJson(
      this,
    );
  }
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {final String? apiKey,
      final String? channelName,
      final PixooDevice? selectedPixooDevice,
      final NetInterface? selectedNetworkInterface,
      final int bufferSize,
      @ThemeModeJsonConverter() final ThemeMode themeMode}) = _$_SettingsState;

  factory _SettingsState.fromJson(Map<String, dynamic> json) =
      _$_SettingsState.fromJson;

  @override
  String? get apiKey;
  @override
  String? get channelName;
  @override
  PixooDevice? get selectedPixooDevice;
  @override
  NetInterface? get selectedNetworkInterface;
  @override
  int get bufferSize;
  @override
  @ThemeModeJsonConverter()
  ThemeMode get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
