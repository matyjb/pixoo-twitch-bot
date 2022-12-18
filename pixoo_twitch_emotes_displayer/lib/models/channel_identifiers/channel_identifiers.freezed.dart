// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_identifiers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChannelIdentifiers _$ChannelIdentifiersFromJson(Map<String, dynamic> json) {
  return _ChannelIdentifiers.fromJson(json);
}

/// @nodoc
mixin _$ChannelIdentifiers {
  int get id => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  String get display_name => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelIdentifiersCopyWith<ChannelIdentifiers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelIdentifiersCopyWith<$Res> {
  factory $ChannelIdentifiersCopyWith(
          ChannelIdentifiers value, $Res Function(ChannelIdentifiers) then) =
      _$ChannelIdentifiersCopyWithImpl<$Res, ChannelIdentifiers>;
  @useResult
  $Res call({int id, String login, String display_name, String avatar});
}

/// @nodoc
class _$ChannelIdentifiersCopyWithImpl<$Res, $Val extends ChannelIdentifiers>
    implements $ChannelIdentifiersCopyWith<$Res> {
  _$ChannelIdentifiersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = null,
    Object? display_name = null,
    Object? avatar = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      display_name: null == display_name
          ? _value.display_name
          : display_name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelIdentifiersCopyWith<$Res>
    implements $ChannelIdentifiersCopyWith<$Res> {
  factory _$$_ChannelIdentifiersCopyWith(_$_ChannelIdentifiers value,
          $Res Function(_$_ChannelIdentifiers) then) =
      __$$_ChannelIdentifiersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String login, String display_name, String avatar});
}

/// @nodoc
class __$$_ChannelIdentifiersCopyWithImpl<$Res>
    extends _$ChannelIdentifiersCopyWithImpl<$Res, _$_ChannelIdentifiers>
    implements _$$_ChannelIdentifiersCopyWith<$Res> {
  __$$_ChannelIdentifiersCopyWithImpl(
      _$_ChannelIdentifiers _value, $Res Function(_$_ChannelIdentifiers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = null,
    Object? display_name = null,
    Object? avatar = null,
  }) {
    return _then(_$_ChannelIdentifiers(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      display_name: null == display_name
          ? _value.display_name
          : display_name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelIdentifiers implements _ChannelIdentifiers {
  const _$_ChannelIdentifiers(
      {required this.id,
      required this.login,
      required this.display_name,
      required this.avatar});

  factory _$_ChannelIdentifiers.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelIdentifiersFromJson(json);

  @override
  final int id;
  @override
  final String login;
  @override
  final String display_name;
  @override
  final String avatar;

  @override
  String toString() {
    return 'ChannelIdentifiers(id: $id, login: $login, display_name: $display_name, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelIdentifiers &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.display_name, display_name) ||
                other.display_name == display_name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, login, display_name, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelIdentifiersCopyWith<_$_ChannelIdentifiers> get copyWith =>
      __$$_ChannelIdentifiersCopyWithImpl<_$_ChannelIdentifiers>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelIdentifiersToJson(
      this,
    );
  }
}

abstract class _ChannelIdentifiers implements ChannelIdentifiers {
  const factory _ChannelIdentifiers(
      {required final int id,
      required final String login,
      required final String display_name,
      required final String avatar}) = _$_ChannelIdentifiers;

  factory _ChannelIdentifiers.fromJson(Map<String, dynamic> json) =
      _$_ChannelIdentifiers.fromJson;

  @override
  int get id;
  @override
  String get login;
  @override
  String get display_name;
  @override
  String get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelIdentifiersCopyWith<_$_ChannelIdentifiers> get copyWith =>
      throw _privateConstructorUsedError;
}
