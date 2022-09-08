// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'twitch_msg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TwitchMessage _$TwitchMessageFromJson(Map<String, dynamic> json) {
  return _TwitchMessage.fromJson(json);
}

/// @nodoc
mixin _$TwitchMessage {
  MsgType get type => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchMessageCopyWith<TwitchMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchMessageCopyWith<$Res> {
  factory $TwitchMessageCopyWith(
          TwitchMessage value, $Res Function(TwitchMessage) then) =
      _$TwitchMessageCopyWithImpl<$Res>;
  $Res call({MsgType type, String author, String content});
}

/// @nodoc
class _$TwitchMessageCopyWithImpl<$Res>
    implements $TwitchMessageCopyWith<$Res> {
  _$TwitchMessageCopyWithImpl(this._value, this._then);

  final TwitchMessage _value;
  // ignore: unused_field
  final $Res Function(TwitchMessage) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? author = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MsgType,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TwitchMessageCopyWith<$Res>
    implements $TwitchMessageCopyWith<$Res> {
  factory _$$_TwitchMessageCopyWith(
          _$_TwitchMessage value, $Res Function(_$_TwitchMessage) then) =
      __$$_TwitchMessageCopyWithImpl<$Res>;
  @override
  $Res call({MsgType type, String author, String content});
}

/// @nodoc
class __$$_TwitchMessageCopyWithImpl<$Res>
    extends _$TwitchMessageCopyWithImpl<$Res>
    implements _$$_TwitchMessageCopyWith<$Res> {
  __$$_TwitchMessageCopyWithImpl(
      _$_TwitchMessage _value, $Res Function(_$_TwitchMessage) _then)
      : super(_value, (v) => _then(v as _$_TwitchMessage));

  @override
  _$_TwitchMessage get _value => super._value as _$_TwitchMessage;

  @override
  $Res call({
    Object? type = freezed,
    Object? author = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_TwitchMessage(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MsgType,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TwitchMessage implements _TwitchMessage {
  const _$_TwitchMessage(
      {required this.type, required this.author, required this.content});

  factory _$_TwitchMessage.fromJson(Map<String, dynamic> json) =>
      _$$_TwitchMessageFromJson(json);

  @override
  final MsgType type;
  @override
  final String author;
  @override
  final String content;

  @override
  String toString() {
    return 'TwitchMessage(type: $type, author: $author, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TwitchMessage &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$$_TwitchMessageCopyWith<_$_TwitchMessage> get copyWith =>
      __$$_TwitchMessageCopyWithImpl<_$_TwitchMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TwitchMessageToJson(
      this,
    );
  }
}

abstract class _TwitchMessage implements TwitchMessage {
  const factory _TwitchMessage(
      {required final MsgType type,
      required final String author,
      required final String content}) = _$_TwitchMessage;

  factory _TwitchMessage.fromJson(Map<String, dynamic> json) =
      _$_TwitchMessage.fromJson;

  @override
  MsgType get type;
  @override
  String get author;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_TwitchMessageCopyWith<_$_TwitchMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
