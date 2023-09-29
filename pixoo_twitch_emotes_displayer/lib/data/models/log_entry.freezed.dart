// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogEntry _$LogEntryFromJson(Map<String, dynamic> json) {
  return _LogEntry.fromJson(json);
}

/// @nodoc
mixin _$LogEntry {
  LogEntryType get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogEntryCopyWith<LogEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogEntryCopyWith<$Res> {
  factory $LogEntryCopyWith(LogEntry value, $Res Function(LogEntry) then) =
      _$LogEntryCopyWithImpl<$Res, LogEntry>;
  @useResult
  $Res call(
      {LogEntryType type, String title, String message, DateTime timestamp});
}

/// @nodoc
class _$LogEntryCopyWithImpl<$Res, $Val extends LogEntry>
    implements $LogEntryCopyWith<$Res> {
  _$LogEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? message = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LogEntryType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LogEntryCopyWith<$Res> implements $LogEntryCopyWith<$Res> {
  factory _$$_LogEntryCopyWith(
          _$_LogEntry value, $Res Function(_$_LogEntry) then) =
      __$$_LogEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LogEntryType type, String title, String message, DateTime timestamp});
}

/// @nodoc
class __$$_LogEntryCopyWithImpl<$Res>
    extends _$LogEntryCopyWithImpl<$Res, _$_LogEntry>
    implements _$$_LogEntryCopyWith<$Res> {
  __$$_LogEntryCopyWithImpl(
      _$_LogEntry _value, $Res Function(_$_LogEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? message = null,
    Object? timestamp = null,
  }) {
    return _then(_$_LogEntry(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LogEntryType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogEntry implements _LogEntry {
  const _$_LogEntry(
      {required this.type,
      required this.title,
      required this.message,
      required this.timestamp});

  factory _$_LogEntry.fromJson(Map<String, dynamic> json) =>
      _$$_LogEntryFromJson(json);

  @override
  final LogEntryType type;
  @override
  final String title;
  @override
  final String message;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'LogEntry(type: $type, title: $title, message: $message, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogEntry &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, title, message, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogEntryCopyWith<_$_LogEntry> get copyWith =>
      __$$_LogEntryCopyWithImpl<_$_LogEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogEntryToJson(
      this,
    );
  }
}

abstract class _LogEntry implements LogEntry {
  const factory _LogEntry(
      {required final LogEntryType type,
      required final String title,
      required final String message,
      required final DateTime timestamp}) = _$_LogEntry;

  factory _LogEntry.fromJson(Map<String, dynamic> json) = _$_LogEntry.fromJson;

  @override
  LogEntryType get type;
  @override
  String get title;
  @override
  String get message;
  @override
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$_LogEntryCopyWith<_$_LogEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
