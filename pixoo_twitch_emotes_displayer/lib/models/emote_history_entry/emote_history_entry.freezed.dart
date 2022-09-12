// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'emote_history_entry.dart';

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
      _$EmoteHistoryEntryCopyWithImpl<$Res>;
  $Res call({Emote emote, DateTime time});

  $EmoteCopyWith<$Res> get emote;
}

/// @nodoc
class _$EmoteHistoryEntryCopyWithImpl<$Res>
    implements $EmoteHistoryEntryCopyWith<$Res> {
  _$EmoteHistoryEntryCopyWithImpl(this._value, this._then);

  final EmoteHistoryEntry _value;
  // ignore: unused_field
  final $Res Function(EmoteHistoryEntry) _then;

  @override
  $Res call({
    Object? emote = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      emote: emote == freezed
          ? _value.emote
          : emote // ignore: cast_nullable_to_non_nullable
              as Emote,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $EmoteCopyWith<$Res> get emote {
    return $EmoteCopyWith<$Res>(_value.emote, (value) {
      return _then(_value.copyWith(emote: value));
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
  $Res call({Emote emote, DateTime time});

  @override
  $EmoteCopyWith<$Res> get emote;
}

/// @nodoc
class __$$_EmoteHistoryEntryCopyWithImpl<$Res>
    extends _$EmoteHistoryEntryCopyWithImpl<$Res>
    implements _$$_EmoteHistoryEntryCopyWith<$Res> {
  __$$_EmoteHistoryEntryCopyWithImpl(
      _$_EmoteHistoryEntry _value, $Res Function(_$_EmoteHistoryEntry) _then)
      : super(_value, (v) => _then(v as _$_EmoteHistoryEntry));

  @override
  _$_EmoteHistoryEntry get _value => super._value as _$_EmoteHistoryEntry;

  @override
  $Res call({
    Object? emote = freezed,
    Object? time = freezed,
  }) {
    return _then(_$_EmoteHistoryEntry(
      emote: emote == freezed
          ? _value.emote
          : emote // ignore: cast_nullable_to_non_nullable
              as Emote,
      time: time == freezed
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
            const DeepCollectionEquality().equals(other.emote, emote) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emote),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
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
