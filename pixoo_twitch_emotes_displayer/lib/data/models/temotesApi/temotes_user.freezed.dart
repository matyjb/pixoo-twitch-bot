// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temotes_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TEmotesUser _$TEmotesUserFromJson(Map<String, dynamic> json) {
  return _TEmotesUser.fromJson(json);
}

/// @nodoc
mixin _$TEmotesUser {
  int get id => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  @JsonKey(name: "display_name")
  String get displayName => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TEmotesUserCopyWith<TEmotesUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TEmotesUserCopyWith<$Res> {
  factory $TEmotesUserCopyWith(
          TEmotesUser value, $Res Function(TEmotesUser) then) =
      _$TEmotesUserCopyWithImpl<$Res, TEmotesUser>;
  @useResult
  $Res call(
      {int id,
      String login,
      @JsonKey(name: "display_name") String displayName,
      String avatar});
}

/// @nodoc
class _$TEmotesUserCopyWithImpl<$Res, $Val extends TEmotesUser>
    implements $TEmotesUserCopyWith<$Res> {
  _$TEmotesUserCopyWithImpl(this._value, this._then);

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
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TEmotesUserCopyWith<$Res>
    implements $TEmotesUserCopyWith<$Res> {
  factory _$$_TEmotesUserCopyWith(
          _$_TEmotesUser value, $Res Function(_$_TEmotesUser) then) =
      __$$_TEmotesUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String login,
      @JsonKey(name: "display_name") String displayName,
      String avatar});
}

/// @nodoc
class __$$_TEmotesUserCopyWithImpl<$Res>
    extends _$TEmotesUserCopyWithImpl<$Res, _$_TEmotesUser>
    implements _$$_TEmotesUserCopyWith<$Res> {
  __$$_TEmotesUserCopyWithImpl(
      _$_TEmotesUser _value, $Res Function(_$_TEmotesUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = null,
    Object? displayName = null,
    Object? avatar = null,
  }) {
    return _then(_$_TEmotesUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
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
class _$_TEmotesUser implements _TEmotesUser {
  const _$_TEmotesUser(
      {required this.id,
      required this.login,
      @JsonKey(name: "display_name") required this.displayName,
      required this.avatar});

  factory _$_TEmotesUser.fromJson(Map<String, dynamic> json) =>
      _$$_TEmotesUserFromJson(json);

  @override
  final int id;
  @override
  final String login;
  @override
  @JsonKey(name: "display_name")
  final String displayName;
  @override
  final String avatar;

  @override
  String toString() {
    return 'TEmotesUser(id: $id, login: $login, displayName: $displayName, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TEmotesUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, login, displayName, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TEmotesUserCopyWith<_$_TEmotesUser> get copyWith =>
      __$$_TEmotesUserCopyWithImpl<_$_TEmotesUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TEmotesUserToJson(
      this,
    );
  }
}

abstract class _TEmotesUser implements TEmotesUser {
  const factory _TEmotesUser(
      {required final int id,
      required final String login,
      @JsonKey(name: "display_name") required final String displayName,
      required final String avatar}) = _$_TEmotesUser;

  factory _TEmotesUser.fromJson(Map<String, dynamic> json) =
      _$_TEmotesUser.fromJson;

  @override
  int get id;
  @override
  String get login;
  @override
  @JsonKey(name: "display_name")
  String get displayName;
  @override
  String get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_TEmotesUserCopyWith<_$_TEmotesUser> get copyWith =>
      throw _privateConstructorUsedError;
}
