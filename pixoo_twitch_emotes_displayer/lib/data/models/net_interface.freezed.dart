// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'net_interface.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NetInterface _$NetInterfaceFromJson(Map<String, dynamic> json) {
  return _NetInterface.fromJson(json);
}

/// @nodoc
mixin _$NetInterface {
  String get name => throw _privateConstructorUsedError;
  List<String> get addresses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NetInterfaceCopyWith<NetInterface> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetInterfaceCopyWith<$Res> {
  factory $NetInterfaceCopyWith(
          NetInterface value, $Res Function(NetInterface) then) =
      _$NetInterfaceCopyWithImpl<$Res, NetInterface>;
  @useResult
  $Res call({String name, List<String> addresses});
}

/// @nodoc
class _$NetInterfaceCopyWithImpl<$Res, $Val extends NetInterface>
    implements $NetInterfaceCopyWith<$Res> {
  _$NetInterfaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? addresses = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      addresses: null == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NetInterfaceCopyWith<$Res>
    implements $NetInterfaceCopyWith<$Res> {
  factory _$$_NetInterfaceCopyWith(
          _$_NetInterface value, $Res Function(_$_NetInterface) then) =
      __$$_NetInterfaceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<String> addresses});
}

/// @nodoc
class __$$_NetInterfaceCopyWithImpl<$Res>
    extends _$NetInterfaceCopyWithImpl<$Res, _$_NetInterface>
    implements _$$_NetInterfaceCopyWith<$Res> {
  __$$_NetInterfaceCopyWithImpl(
      _$_NetInterface _value, $Res Function(_$_NetInterface) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? addresses = null,
  }) {
    return _then(_$_NetInterface(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      addresses: null == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NetInterface implements _NetInterface {
  const _$_NetInterface(
      {required this.name, required final List<String> addresses})
      : _addresses = addresses;

  factory _$_NetInterface.fromJson(Map<String, dynamic> json) =>
      _$$_NetInterfaceFromJson(json);

  @override
  final String name;
  final List<String> _addresses;
  @override
  List<String> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  @override
  String toString() {
    return 'NetInterface(name: $name, addresses: $addresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetInterface &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_addresses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NetInterfaceCopyWith<_$_NetInterface> get copyWith =>
      __$$_NetInterfaceCopyWithImpl<_$_NetInterface>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NetInterfaceToJson(
      this,
    );
  }
}

abstract class _NetInterface implements NetInterface {
  const factory _NetInterface(
      {required final String name,
      required final List<String> addresses}) = _$_NetInterface;

  factory _NetInterface.fromJson(Map<String, dynamic> json) =
      _$_NetInterface.fromJson;

  @override
  String get name;
  @override
  List<String> get addresses;
  @override
  @JsonKey(ignore: true)
  _$$_NetInterfaceCopyWith<_$_NetInterface> get copyWith =>
      throw _privateConstructorUsedError;
}
