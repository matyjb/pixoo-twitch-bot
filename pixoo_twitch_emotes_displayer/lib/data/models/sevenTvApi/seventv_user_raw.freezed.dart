// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seventv_user_raw.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SevenTVUserRaw _$SevenTVUserRawFromJson(Map<String, dynamic> json) {
  return _SevenTVUserRaw.fromJson(json);
}

/// @nodoc
mixin _$SevenTVUserRaw {
  String get id => throw _privateConstructorUsedError;
  String get twitch_id => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  String get display_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SevenTVUserRawCopyWith<SevenTVUserRaw> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SevenTVUserRawCopyWith<$Res> {
  factory $SevenTVUserRawCopyWith(
          SevenTVUserRaw value, $Res Function(SevenTVUserRaw) then) =
      _$SevenTVUserRawCopyWithImpl<$Res, SevenTVUserRaw>;
  @useResult
  $Res call({String id, String twitch_id, String login, String display_name});
}

/// @nodoc
class _$SevenTVUserRawCopyWithImpl<$Res, $Val extends SevenTVUserRaw>
    implements $SevenTVUserRawCopyWith<$Res> {
  _$SevenTVUserRawCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? twitch_id = null,
    Object? login = null,
    Object? display_name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      twitch_id: null == twitch_id
          ? _value.twitch_id
          : twitch_id // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      display_name: null == display_name
          ? _value.display_name
          : display_name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SevenTVUserRawCopyWith<$Res>
    implements $SevenTVUserRawCopyWith<$Res> {
  factory _$$_SevenTVUserRawCopyWith(
          _$_SevenTVUserRaw value, $Res Function(_$_SevenTVUserRaw) then) =
      __$$_SevenTVUserRawCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String twitch_id, String login, String display_name});
}

/// @nodoc
class __$$_SevenTVUserRawCopyWithImpl<$Res>
    extends _$SevenTVUserRawCopyWithImpl<$Res, _$_SevenTVUserRaw>
    implements _$$_SevenTVUserRawCopyWith<$Res> {
  __$$_SevenTVUserRawCopyWithImpl(
      _$_SevenTVUserRaw _value, $Res Function(_$_SevenTVUserRaw) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? twitch_id = null,
    Object? login = null,
    Object? display_name = null,
  }) {
    return _then(_$_SevenTVUserRaw(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      twitch_id: null == twitch_id
          ? _value.twitch_id
          : twitch_id // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      display_name: null == display_name
          ? _value.display_name
          : display_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SevenTVUserRaw implements _SevenTVUserRaw {
  const _$_SevenTVUserRaw(
      {required this.id,
      required this.twitch_id,
      required this.login,
      required this.display_name});

  factory _$_SevenTVUserRaw.fromJson(Map<String, dynamic> json) =>
      _$$_SevenTVUserRawFromJson(json);

  @override
  final String id;
  @override
  final String twitch_id;
  @override
  final String login;
  @override
  final String display_name;

  @override
  String toString() {
    return 'SevenTVUserRaw(id: $id, twitch_id: $twitch_id, login: $login, display_name: $display_name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SevenTVUserRaw &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.twitch_id, twitch_id) ||
                other.twitch_id == twitch_id) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.display_name, display_name) ||
                other.display_name == display_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, twitch_id, login, display_name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SevenTVUserRawCopyWith<_$_SevenTVUserRaw> get copyWith =>
      __$$_SevenTVUserRawCopyWithImpl<_$_SevenTVUserRaw>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SevenTVUserRawToJson(
      this,
    );
  }
}

abstract class _SevenTVUserRaw implements SevenTVUserRaw {
  const factory _SevenTVUserRaw(
      {required final String id,
      required final String twitch_id,
      required final String login,
      required final String display_name}) = _$_SevenTVUserRaw;

  factory _SevenTVUserRaw.fromJson(Map<String, dynamic> json) =
      _$_SevenTVUserRaw.fromJson;

  @override
  String get id;
  @override
  String get twitch_id;
  @override
  String get login;
  @override
  String get display_name;
  @override
  @JsonKey(ignore: true)
  _$$_SevenTVUserRawCopyWith<_$_SevenTVUserRaw> get copyWith =>
      throw _privateConstructorUsedError;
}
