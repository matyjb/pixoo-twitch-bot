// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../models/pixoo_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PixooDevice _$PixooDeviceFromJson(Map<String, dynamic> json) {
  return _PixooDevice.fromJson(json);
}

/// @nodoc
mixin _$PixooDevice {
  String get DeviceName => throw _privateConstructorUsedError;
  int get DeviceId => throw _privateConstructorUsedError;
  String get DevicePrivateIP => throw _privateConstructorUsedError;
  String get DeviceMac => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PixooDeviceCopyWith<PixooDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PixooDeviceCopyWith<$Res> {
  factory $PixooDeviceCopyWith(
          PixooDevice value, $Res Function(PixooDevice) then) =
      _$PixooDeviceCopyWithImpl<$Res, PixooDevice>;
  @useResult
  $Res call(
      {String DeviceName,
      int DeviceId,
      String DevicePrivateIP,
      String DeviceMac});
}

/// @nodoc
class _$PixooDeviceCopyWithImpl<$Res, $Val extends PixooDevice>
    implements $PixooDeviceCopyWith<$Res> {
  _$PixooDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? DeviceName = null,
    Object? DeviceId = null,
    Object? DevicePrivateIP = null,
    Object? DeviceMac = null,
  }) {
    return _then(_value.copyWith(
      DeviceName: null == DeviceName
          ? _value.DeviceName
          : DeviceName // ignore: cast_nullable_to_non_nullable
              as String,
      DeviceId: null == DeviceId
          ? _value.DeviceId
          : DeviceId // ignore: cast_nullable_to_non_nullable
              as int,
      DevicePrivateIP: null == DevicePrivateIP
          ? _value.DevicePrivateIP
          : DevicePrivateIP // ignore: cast_nullable_to_non_nullable
              as String,
      DeviceMac: null == DeviceMac
          ? _value.DeviceMac
          : DeviceMac // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PixooDeviceCopyWith<$Res>
    implements $PixooDeviceCopyWith<$Res> {
  factory _$$_PixooDeviceCopyWith(
          _$_PixooDevice value, $Res Function(_$_PixooDevice) then) =
      __$$_PixooDeviceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String DeviceName,
      int DeviceId,
      String DevicePrivateIP,
      String DeviceMac});
}

/// @nodoc
class __$$_PixooDeviceCopyWithImpl<$Res>
    extends _$PixooDeviceCopyWithImpl<$Res, _$_PixooDevice>
    implements _$$_PixooDeviceCopyWith<$Res> {
  __$$_PixooDeviceCopyWithImpl(
      _$_PixooDevice _value, $Res Function(_$_PixooDevice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? DeviceName = null,
    Object? DeviceId = null,
    Object? DevicePrivateIP = null,
    Object? DeviceMac = null,
  }) {
    return _then(_$_PixooDevice(
      DeviceName: null == DeviceName
          ? _value.DeviceName
          : DeviceName // ignore: cast_nullable_to_non_nullable
              as String,
      DeviceId: null == DeviceId
          ? _value.DeviceId
          : DeviceId // ignore: cast_nullable_to_non_nullable
              as int,
      DevicePrivateIP: null == DevicePrivateIP
          ? _value.DevicePrivateIP
          : DevicePrivateIP // ignore: cast_nullable_to_non_nullable
              as String,
      DeviceMac: null == DeviceMac
          ? _value.DeviceMac
          : DeviceMac // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PixooDevice implements _PixooDevice {
  const _$_PixooDevice(
      {required this.DeviceName,
      required this.DeviceId,
      required this.DevicePrivateIP,
      required this.DeviceMac});

  factory _$_PixooDevice.fromJson(Map<String, dynamic> json) =>
      _$$_PixooDeviceFromJson(json);

  @override
  final String DeviceName;
  @override
  final int DeviceId;
  @override
  final String DevicePrivateIP;
  @override
  final String DeviceMac;

  @override
  String toString() {
    return 'PixooDevice(DeviceName: $DeviceName, DeviceId: $DeviceId, DevicePrivateIP: $DevicePrivateIP, DeviceMac: $DeviceMac)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PixooDevice &&
            (identical(other.DeviceName, DeviceName) ||
                other.DeviceName == DeviceName) &&
            (identical(other.DeviceId, DeviceId) ||
                other.DeviceId == DeviceId) &&
            (identical(other.DevicePrivateIP, DevicePrivateIP) ||
                other.DevicePrivateIP == DevicePrivateIP) &&
            (identical(other.DeviceMac, DeviceMac) ||
                other.DeviceMac == DeviceMac));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, DeviceName, DeviceId, DevicePrivateIP, DeviceMac);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PixooDeviceCopyWith<_$_PixooDevice> get copyWith =>
      __$$_PixooDeviceCopyWithImpl<_$_PixooDevice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PixooDeviceToJson(
      this,
    );
  }
}

abstract class _PixooDevice implements PixooDevice {
  const factory _PixooDevice(
      {required final String DeviceName,
      required final int DeviceId,
      required final String DevicePrivateIP,
      required final String DeviceMac}) = _$_PixooDevice;

  factory _PixooDevice.fromJson(Map<String, dynamic> json) =
      _$_PixooDevice.fromJson;

  @override
  String get DeviceName;
  @override
  int get DeviceId;
  @override
  String get DevicePrivateIP;
  @override
  String get DeviceMac;
  @override
  @JsonKey(ignore: true)
  _$$_PixooDeviceCopyWith<_$_PixooDevice> get copyWith =>
      throw _privateConstructorUsedError;
}
