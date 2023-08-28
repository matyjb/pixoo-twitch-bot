// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seventv_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SevenTVUser _$SevenTVUserFromJson(Map<String, dynamic> json) {
  return _SevenTVUser.fromJson(json);
}

/// @nodoc
mixin _$SevenTVUser {
  String get id => throw _privateConstructorUsedError;
  String get twitchId => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SevenTVUserCopyWith<SevenTVUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SevenTVUserCopyWith<$Res> {
  factory $SevenTVUserCopyWith(
          SevenTVUser value, $Res Function(SevenTVUser) then) =
      _$SevenTVUserCopyWithImpl<$Res, SevenTVUser>;
  @useResult
  $Res call({String id, String twitchId, String login, String displayName});
}

/// @nodoc
class _$SevenTVUserCopyWithImpl<$Res, $Val extends SevenTVUser>
    implements $SevenTVUserCopyWith<$Res> {
  _$SevenTVUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? twitchId = null,
    Object? login = null,
    Object? displayName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      twitchId: null == twitchId
          ? _value.twitchId
          : twitchId // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SevenTVUserCopyWith<$Res>
    implements $SevenTVUserCopyWith<$Res> {
  factory _$$_SevenTVUserCopyWith(
          _$_SevenTVUser value, $Res Function(_$_SevenTVUser) then) =
      __$$_SevenTVUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String twitchId, String login, String displayName});
}

/// @nodoc
class __$$_SevenTVUserCopyWithImpl<$Res>
    extends _$SevenTVUserCopyWithImpl<$Res, _$_SevenTVUser>
    implements _$$_SevenTVUserCopyWith<$Res> {
  __$$_SevenTVUserCopyWithImpl(
      _$_SevenTVUser _value, $Res Function(_$_SevenTVUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? twitchId = null,
    Object? login = null,
    Object? displayName = null,
  }) {
    return _then(_$_SevenTVUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      twitchId: null == twitchId
          ? _value.twitchId
          : twitchId // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SevenTVUser implements _SevenTVUser {
  const _$_SevenTVUser(
      {required this.id,
      required this.twitchId,
      required this.login,
      required this.displayName});

  factory _$_SevenTVUser.fromJson(Map<String, dynamic> json) =>
      _$$_SevenTVUserFromJson(json);

  @override
  final String id;
  @override
  final String twitchId;
  @override
  final String login;
  @override
  final String displayName;

  @override
  String toString() {
    return 'SevenTVUser(id: $id, twitchId: $twitchId, login: $login, displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SevenTVUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.twitchId, twitchId) ||
                other.twitchId == twitchId) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, twitchId, login, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SevenTVUserCopyWith<_$_SevenTVUser> get copyWith =>
      __$$_SevenTVUserCopyWithImpl<_$_SevenTVUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SevenTVUserToJson(
      this,
    );
  }
}

abstract class _SevenTVUser implements SevenTVUser {
  const factory _SevenTVUser(
      {required final String id,
      required final String twitchId,
      required final String login,
      required final String displayName}) = _$_SevenTVUser;

  factory _SevenTVUser.fromJson(Map<String, dynamic> json) =
      _$_SevenTVUser.fromJson;

  @override
  String get id;
  @override
  String get twitchId;
  @override
  String get login;
  @override
  String get displayName;
  @override
  @JsonKey(ignore: true)
  _$$_SevenTVUserCopyWith<_$_SevenTVUser> get copyWith =>
      throw _privateConstructorUsedError;
}
