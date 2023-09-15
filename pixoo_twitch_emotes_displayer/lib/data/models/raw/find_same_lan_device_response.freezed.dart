// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'find_same_lan_device_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FindSameLANDevicesResponse _$FindSameLANDevicesResponseFromJson(
    Map<String, dynamic> json) {
  return _FindSameLANDevicesResponse.fromJson(json);
}

/// @nodoc
mixin _$FindSameLANDevicesResponse {
  int get ReturnCode => throw _privateConstructorUsedError;
  String get ReturnMessage => throw _privateConstructorUsedError;
  List<PixooDeviceRaw> get DeviceList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindSameLANDevicesResponseCopyWith<FindSameLANDevicesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindSameLANDevicesResponseCopyWith<$Res> {
  factory $FindSameLANDevicesResponseCopyWith(FindSameLANDevicesResponse value,
          $Res Function(FindSameLANDevicesResponse) then) =
      _$FindSameLANDevicesResponseCopyWithImpl<$Res,
          FindSameLANDevicesResponse>;
  @useResult
  $Res call(
      {int ReturnCode, String ReturnMessage, List<PixooDeviceRaw> DeviceList});
}

/// @nodoc
class _$FindSameLANDevicesResponseCopyWithImpl<$Res,
        $Val extends FindSameLANDevicesResponse>
    implements $FindSameLANDevicesResponseCopyWith<$Res> {
  _$FindSameLANDevicesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ReturnCode = null,
    Object? ReturnMessage = null,
    Object? DeviceList = null,
  }) {
    return _then(_value.copyWith(
      ReturnCode: null == ReturnCode
          ? _value.ReturnCode
          : ReturnCode // ignore: cast_nullable_to_non_nullable
              as int,
      ReturnMessage: null == ReturnMessage
          ? _value.ReturnMessage
          : ReturnMessage // ignore: cast_nullable_to_non_nullable
              as String,
      DeviceList: null == DeviceList
          ? _value.DeviceList
          : DeviceList // ignore: cast_nullable_to_non_nullable
              as List<PixooDeviceRaw>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FindSameLANDevicesResponseCopyWith<$Res>
    implements $FindSameLANDevicesResponseCopyWith<$Res> {
  factory _$$_FindSameLANDevicesResponseCopyWith(
          _$_FindSameLANDevicesResponse value,
          $Res Function(_$_FindSameLANDevicesResponse) then) =
      __$$_FindSameLANDevicesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int ReturnCode, String ReturnMessage, List<PixooDeviceRaw> DeviceList});
}

/// @nodoc
class __$$_FindSameLANDevicesResponseCopyWithImpl<$Res>
    extends _$FindSameLANDevicesResponseCopyWithImpl<$Res,
        _$_FindSameLANDevicesResponse>
    implements _$$_FindSameLANDevicesResponseCopyWith<$Res> {
  __$$_FindSameLANDevicesResponseCopyWithImpl(
      _$_FindSameLANDevicesResponse _value,
      $Res Function(_$_FindSameLANDevicesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ReturnCode = null,
    Object? ReturnMessage = null,
    Object? DeviceList = null,
  }) {
    return _then(_$_FindSameLANDevicesResponse(
      ReturnCode: null == ReturnCode
          ? _value.ReturnCode
          : ReturnCode // ignore: cast_nullable_to_non_nullable
              as int,
      ReturnMessage: null == ReturnMessage
          ? _value.ReturnMessage
          : ReturnMessage // ignore: cast_nullable_to_non_nullable
              as String,
      DeviceList: null == DeviceList
          ? _value._DeviceList
          : DeviceList // ignore: cast_nullable_to_non_nullable
              as List<PixooDeviceRaw>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FindSameLANDevicesResponse implements _FindSameLANDevicesResponse {
  const _$_FindSameLANDevicesResponse(
      {required this.ReturnCode,
      required this.ReturnMessage,
      required final List<PixooDeviceRaw> DeviceList})
      : _DeviceList = DeviceList;

  factory _$_FindSameLANDevicesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FindSameLANDevicesResponseFromJson(json);

  @override
  final int ReturnCode;
  @override
  final String ReturnMessage;
  final List<PixooDeviceRaw> _DeviceList;
  @override
  List<PixooDeviceRaw> get DeviceList {
    if (_DeviceList is EqualUnmodifiableListView) return _DeviceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_DeviceList);
  }

  @override
  String toString() {
    return 'FindSameLANDevicesResponse(ReturnCode: $ReturnCode, ReturnMessage: $ReturnMessage, DeviceList: $DeviceList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FindSameLANDevicesResponse &&
            (identical(other.ReturnCode, ReturnCode) ||
                other.ReturnCode == ReturnCode) &&
            (identical(other.ReturnMessage, ReturnMessage) ||
                other.ReturnMessage == ReturnMessage) &&
            const DeepCollectionEquality()
                .equals(other._DeviceList, _DeviceList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ReturnCode, ReturnMessage,
      const DeepCollectionEquality().hash(_DeviceList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FindSameLANDevicesResponseCopyWith<_$_FindSameLANDevicesResponse>
      get copyWith => __$$_FindSameLANDevicesResponseCopyWithImpl<
          _$_FindSameLANDevicesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FindSameLANDevicesResponseToJson(
      this,
    );
  }
}

abstract class _FindSameLANDevicesResponse
    implements FindSameLANDevicesResponse {
  const factory _FindSameLANDevicesResponse(
          {required final int ReturnCode,
          required final String ReturnMessage,
          required final List<PixooDeviceRaw> DeviceList}) =
      _$_FindSameLANDevicesResponse;

  factory _FindSameLANDevicesResponse.fromJson(Map<String, dynamic> json) =
      _$_FindSameLANDevicesResponse.fromJson;

  @override
  int get ReturnCode;
  @override
  String get ReturnMessage;
  @override
  List<PixooDeviceRaw> get DeviceList;
  @override
  @JsonKey(ignore: true)
  _$$_FindSameLANDevicesResponseCopyWith<_$_FindSameLANDevicesResponse>
      get copyWith => throw _privateConstructorUsedError;
}
