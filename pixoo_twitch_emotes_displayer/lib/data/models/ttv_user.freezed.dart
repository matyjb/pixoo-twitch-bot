// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ttv_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TtvUser _$TtvUserFromJson(Map<String, dynamic> json) {
  return _TtvUser.fromJson(json);
}

/// @nodoc
mixin _$TtvUser {
  String get id => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TtvUserCopyWith<TtvUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TtvUserCopyWith<$Res> {
  factory $TtvUserCopyWith(TtvUser value, $Res Function(TtvUser) then) =
      _$TtvUserCopyWithImpl<$Res, TtvUser>;
  @useResult
  $Res call({String id, String login, String displayName, String avatarUrl});
}

/// @nodoc
class _$TtvUserCopyWithImpl<$Res, $Val extends TtvUser>
    implements $TtvUserCopyWith<$Res> {
  _$TtvUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = null,
    Object? displayName = null,
    Object? avatarUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TtvUserCopyWith<$Res> implements $TtvUserCopyWith<$Res> {
  factory _$$_TtvUserCopyWith(
          _$_TtvUser value, $Res Function(_$_TtvUser) then) =
      __$$_TtvUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String login, String displayName, String avatarUrl});
}

/// @nodoc
class __$$_TtvUserCopyWithImpl<$Res>
    extends _$TtvUserCopyWithImpl<$Res, _$_TtvUser>
    implements _$$_TtvUserCopyWith<$Res> {
  __$$_TtvUserCopyWithImpl(_$_TtvUser _value, $Res Function(_$_TtvUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = null,
    Object? displayName = null,
    Object? avatarUrl = null,
  }) {
    return _then(_$_TtvUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TtvUser implements _TtvUser {
  const _$_TtvUser(
      {required this.id,
      required this.login,
      required this.displayName,
      required this.avatarUrl});

  factory _$_TtvUser.fromJson(Map<String, dynamic> json) =>
      _$$_TtvUserFromJson(json);

  @override
  final String id;
  @override
  final String login;
  @override
  final String displayName;
  @override
  final String avatarUrl;

  @override
  String toString() {
    return 'TtvUser(id: $id, login: $login, displayName: $displayName, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TtvUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, login, displayName, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TtvUserCopyWith<_$_TtvUser> get copyWith =>
      __$$_TtvUserCopyWithImpl<_$_TtvUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TtvUserToJson(
      this,
    );
  }
}

abstract class _TtvUser implements TtvUser {
  const factory _TtvUser(
      {required final String id,
      required final String login,
      required final String displayName,
      required final String avatarUrl}) = _$_TtvUser;

  factory _TtvUser.fromJson(Map<String, dynamic> json) = _$_TtvUser.fromJson;

  @override
  String get id;
  @override
  String get login;
  @override
  String get displayName;
  @override
  String get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$_TtvUserCopyWith<_$_TtvUser> get copyWith =>
      throw _privateConstructorUsedError;
}
