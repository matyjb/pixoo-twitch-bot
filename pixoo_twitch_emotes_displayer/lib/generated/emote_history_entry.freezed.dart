// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../models/emote_history_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmoteHistoryEntry {
  Emote get emote => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmoteHistoryEntryCopyWith<EmoteHistoryEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmoteHistoryEntryCopyWith<$Res> {
  factory $EmoteHistoryEntryCopyWith(
          EmoteHistoryEntry value, $Res Function(EmoteHistoryEntry) then) =
      _$EmoteHistoryEntryCopyWithImpl<$Res, EmoteHistoryEntry>;
  @useResult
  $Res call({Emote emote, DateTime time});

  $EmoteCopyWith<$Res> get emote;
}

/// @nodoc
class _$EmoteHistoryEntryCopyWithImpl<$Res, $Val extends EmoteHistoryEntry>
    implements $EmoteHistoryEntryCopyWith<$Res> {
  _$EmoteHistoryEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emote = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      emote: null == emote
          ? _value.emote
          : emote // ignore: cast_nullable_to_non_nullable
              as Emote,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmoteCopyWith<$Res> get emote {
    return $EmoteCopyWith<$Res>(_value.emote, (value) {
      return _then(_value.copyWith(emote: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EmoteHistoryEntryCopyWith<$Res>
    implements $EmoteHistoryEntryCopyWith<$Res> {
  factory _$$_EmoteHistoryEntryCopyWith(_$_EmoteHistoryEntry value,
          $Res Function(_$_EmoteHistoryEntry) then) =
      __$$_EmoteHistoryEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Emote emote, DateTime time});

  @override
  $EmoteCopyWith<$Res> get emote;
}

/// @nodoc
class __$$_EmoteHistoryEntryCopyWithImpl<$Res>
    extends _$EmoteHistoryEntryCopyWithImpl<$Res, _$_EmoteHistoryEntry>
    implements _$$_EmoteHistoryEntryCopyWith<$Res> {
  __$$_EmoteHistoryEntryCopyWithImpl(
      _$_EmoteHistoryEntry _value, $Res Function(_$_EmoteHistoryEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emote = null,
    Object? time = null,
  }) {
    return _then(_$_EmoteHistoryEntry(
      emote: null == emote
          ? _value.emote
          : emote // ignore: cast_nullable_to_non_nullable
              as Emote,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_EmoteHistoryEntry implements _EmoteHistoryEntry {
  const _$_EmoteHistoryEntry({required this.emote, required this.time});

  @override
  final Emote emote;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'EmoteHistoryEntry(emote: $emote, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmoteHistoryEntry &&
            (identical(other.emote, emote) || other.emote == emote) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emote, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmoteHistoryEntryCopyWith<_$_EmoteHistoryEntry> get copyWith =>
      __$$_EmoteHistoryEntryCopyWithImpl<_$_EmoteHistoryEntry>(
          this, _$identity);
}

abstract class _EmoteHistoryEntry implements EmoteHistoryEntry {
  const factory _EmoteHistoryEntry(
      {required final Emote emote,
      required final DateTime time}) = _$_EmoteHistoryEntry;

  @override
  Emote get emote;
  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$$_EmoteHistoryEntryCopyWith<_$_EmoteHistoryEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
