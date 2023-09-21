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
  @JsonKey(name: "ReturnCode")
  int get returnCode => throw _privateConstructorUsedError;
  @JsonKey(name: "ReturnMessage")
  String get returnMessage => throw _privateConstructorUsedError;
  @JsonKey(name: "DeviceList")
  List<PixooDevice> get deviceList => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "ReturnCode") int returnCode,
      @JsonKey(name: "ReturnMessage") String returnMessage,
      @JsonKey(name: "DeviceList") List<PixooDevice> deviceList});
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
    Object? returnCode = null,
    Object? returnMessage = null,
    Object? deviceList = null,
  }) {
    return _then(_value.copyWith(
      returnCode: null == returnCode
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as int,
      returnMessage: null == returnMessage
          ? _value.returnMessage
          : returnMessage // ignore: cast_nullable_to_non_nullable
              as String,
      deviceList: null == deviceList
          ? _value.deviceList
          : deviceList // ignore: cast_nullable_to_non_nullable
              as List<PixooDevice>,
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
      {@JsonKey(name: "ReturnCode") int returnCode,
      @JsonKey(name: "ReturnMessage") String returnMessage,
      @JsonKey(name: "DeviceList") List<PixooDevice> deviceList});
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
    Object? returnCode = null,
    Object? returnMessage = null,
    Object? deviceList = null,
  }) {
    return _then(_$_FindSameLANDevicesResponse(
      returnCode: null == returnCode
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as int,
      returnMessage: null == returnMessage
          ? _value.returnMessage
          : returnMessage // ignore: cast_nullable_to_non_nullable
              as String,
      deviceList: null == deviceList
          ? _value._deviceList
          : deviceList // ignore: cast_nullable_to_non_nullable
              as List<PixooDevice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FindSameLANDevicesResponse implements _FindSameLANDevicesResponse {
  const _$_FindSameLANDevicesResponse(
      {@JsonKey(name: "ReturnCode") required this.returnCode,
      @JsonKey(name: "ReturnMessage") required this.returnMessage,
      @JsonKey(name: "DeviceList") required final List<PixooDevice> deviceList})
      : _deviceList = deviceList;

  factory _$_FindSameLANDevicesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FindSameLANDevicesResponseFromJson(json);

  @override
  @JsonKey(name: "ReturnCode")
  final int returnCode;
  @override
  @JsonKey(name: "ReturnMessage")
  final String returnMessage;
  final List<PixooDevice> _deviceList;
  @override
  @JsonKey(name: "DeviceList")
  List<PixooDevice> get deviceList {
    if (_deviceList is EqualUnmodifiableListView) return _deviceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deviceList);
  }

  @override
  String toString() {
    return 'FindSameLANDevicesResponse(returnCode: $returnCode, returnMessage: $returnMessage, deviceList: $deviceList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FindSameLANDevicesResponse &&
            (identical(other.returnCode, returnCode) ||
                other.returnCode == returnCode) &&
            (identical(other.returnMessage, returnMessage) ||
                other.returnMessage == returnMessage) &&
            const DeepCollectionEquality()
                .equals(other._deviceList, _deviceList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, returnCode, returnMessage,
      const DeepCollectionEquality().hash(_deviceList));

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
          {@JsonKey(name: "ReturnCode") required final int returnCode,
          @JsonKey(name: "ReturnMessage") required final String returnMessage,
          @JsonKey(name: "DeviceList")
          required final List<PixooDevice> deviceList}) =
      _$_FindSameLANDevicesResponse;

  factory _FindSameLANDevicesResponse.fromJson(Map<String, dynamic> json) =
      _$_FindSameLANDevicesResponse.fromJson;

  @override
  @JsonKey(name: "ReturnCode")
  int get returnCode;
  @override
  @JsonKey(name: "ReturnMessage")
  String get returnMessage;
  @override
  @JsonKey(name: "DeviceList")
  List<PixooDevice> get deviceList;
  @override
  @JsonKey(ignore: true)
  _$$_FindSameLANDevicesResponseCopyWith<_$_FindSameLANDevicesResponse>
      get copyWith => throw _privateConstructorUsedError;
}
