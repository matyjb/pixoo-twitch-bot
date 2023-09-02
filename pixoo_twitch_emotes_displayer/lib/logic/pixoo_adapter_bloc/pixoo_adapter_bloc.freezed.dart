// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pixoo_adapter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PixooAdapterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function(TtvEmote emote) sendEmote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function(TtvEmote emote)? sendEmote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function(TtvEmote emote)? sendEmote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Stop value) stop,
    required TResult Function(_SendEmote value) sendEmote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_SendEmote value)? sendEmote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Stop value)? stop,
    TResult Function(_SendEmote value)? sendEmote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PixooAdapterEventCopyWith<$Res> {
  factory $PixooAdapterEventCopyWith(
          PixooAdapterEvent value, $Res Function(PixooAdapterEvent) then) =
      _$PixooAdapterEventCopyWithImpl<$Res, PixooAdapterEvent>;
}

/// @nodoc
class _$PixooAdapterEventCopyWithImpl<$Res, $Val extends PixooAdapterEvent>
    implements $PixooAdapterEventCopyWith<$Res> {
  _$PixooAdapterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartCopyWith<$Res> {
  factory _$$_StartCopyWith(_$_Start value, $Res Function(_$_Start) then) =
      __$$_StartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartCopyWithImpl<$Res>
    extends _$PixooAdapterEventCopyWithImpl<$Res, _$_Start>
    implements _$$_StartCopyWith<$Res> {
  __$$_StartCopyWithImpl(_$_Start _value, $Res Function(_$_Start) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Start implements _Start {
  const _$_Start();

  @override
  String toString() {
    return 'PixooAdapterEvent.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Start);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function(TtvEmote emote) sendEmote,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function(TtvEmote emote)? sendEmote,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function(TtvEmote emote)? sendEmote,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Stop value) stop,
    required TResult Function(_SendEmote value) sendEmote,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_SendEmote value)? sendEmote,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Stop value)? stop,
    TResult Function(_SendEmote value)? sendEmote,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements PixooAdapterEvent {
  const factory _Start() = _$_Start;
}

/// @nodoc
abstract class _$$_StopCopyWith<$Res> {
  factory _$$_StopCopyWith(_$_Stop value, $Res Function(_$_Stop) then) =
      __$$_StopCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StopCopyWithImpl<$Res>
    extends _$PixooAdapterEventCopyWithImpl<$Res, _$_Stop>
    implements _$$_StopCopyWith<$Res> {
  __$$_StopCopyWithImpl(_$_Stop _value, $Res Function(_$_Stop) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Stop implements _Stop {
  const _$_Stop();

  @override
  String toString() {
    return 'PixooAdapterEvent.stop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Stop);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function(TtvEmote emote) sendEmote,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function(TtvEmote emote)? sendEmote,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function(TtvEmote emote)? sendEmote,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Stop value) stop,
    required TResult Function(_SendEmote value) sendEmote,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_SendEmote value)? sendEmote,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Stop value)? stop,
    TResult Function(_SendEmote value)? sendEmote,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _Stop implements PixooAdapterEvent {
  const factory _Stop() = _$_Stop;
}

/// @nodoc
abstract class _$$_SendEmoteCopyWith<$Res> {
  factory _$$_SendEmoteCopyWith(
          _$_SendEmote value, $Res Function(_$_SendEmote) then) =
      __$$_SendEmoteCopyWithImpl<$Res>;
  @useResult
  $Res call({TtvEmote emote});

  $TtvEmoteCopyWith<$Res> get emote;
}

/// @nodoc
class __$$_SendEmoteCopyWithImpl<$Res>
    extends _$PixooAdapterEventCopyWithImpl<$Res, _$_SendEmote>
    implements _$$_SendEmoteCopyWith<$Res> {
  __$$_SendEmoteCopyWithImpl(
      _$_SendEmote _value, $Res Function(_$_SendEmote) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emote = null,
  }) {
    return _then(_$_SendEmote(
      null == emote
          ? _value.emote
          : emote // ignore: cast_nullable_to_non_nullable
              as TtvEmote,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TtvEmoteCopyWith<$Res> get emote {
    return $TtvEmoteCopyWith<$Res>(_value.emote, (value) {
      return _then(_value.copyWith(emote: value));
    });
  }
}

/// @nodoc

class _$_SendEmote implements _SendEmote {
  const _$_SendEmote(this.emote);

  @override
  final TtvEmote emote;

  @override
  String toString() {
    return 'PixooAdapterEvent.sendEmote(emote: $emote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendEmote &&
            (identical(other.emote, emote) || other.emote == emote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendEmoteCopyWith<_$_SendEmote> get copyWith =>
      __$$_SendEmoteCopyWithImpl<_$_SendEmote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function(TtvEmote emote) sendEmote,
  }) {
    return sendEmote(emote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function(TtvEmote emote)? sendEmote,
  }) {
    return sendEmote?.call(emote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function(TtvEmote emote)? sendEmote,
    required TResult orElse(),
  }) {
    if (sendEmote != null) {
      return sendEmote(emote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Stop value) stop,
    required TResult Function(_SendEmote value) sendEmote,
  }) {
    return sendEmote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_SendEmote value)? sendEmote,
  }) {
    return sendEmote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Stop value)? stop,
    TResult Function(_SendEmote value)? sendEmote,
    required TResult orElse(),
  }) {
    if (sendEmote != null) {
      return sendEmote(this);
    }
    return orElse();
  }
}

abstract class _SendEmote implements PixooAdapterEvent {
  const factory _SendEmote(final TtvEmote emote) = _$_SendEmote;

  TtvEmote get emote;
  @JsonKey(ignore: true)
  _$$_SendEmoteCopyWith<_$_SendEmote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PixooAdapterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TtvEmote? currentEmote) running,
    required TResult Function() stopped,
    required TResult Function() changingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TtvEmote? currentEmote)? running,
    TResult? Function()? stopped,
    TResult? Function()? changingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TtvEmote? currentEmote)? running,
    TResult Function()? stopped,
    TResult Function()? changingStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Running value) running,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_ChangingStatus value) changingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Running value)? running,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_ChangingStatus value)? changingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Running value)? running,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_ChangingStatus value)? changingStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PixooAdapterStateCopyWith<$Res> {
  factory $PixooAdapterStateCopyWith(
          PixooAdapterState value, $Res Function(PixooAdapterState) then) =
      _$PixooAdapterStateCopyWithImpl<$Res, PixooAdapterState>;
}

/// @nodoc
class _$PixooAdapterStateCopyWithImpl<$Res, $Val extends PixooAdapterState>
    implements $PixooAdapterStateCopyWith<$Res> {
  _$PixooAdapterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PixooAdapterStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PixooAdapterState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TtvEmote? currentEmote) running,
    required TResult Function() stopped,
    required TResult Function() changingStatus,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TtvEmote? currentEmote)? running,
    TResult? Function()? stopped,
    TResult? Function()? changingStatus,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TtvEmote? currentEmote)? running,
    TResult Function()? stopped,
    TResult Function()? changingStatus,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Running value) running,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_ChangingStatus value) changingStatus,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Running value)? running,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_ChangingStatus value)? changingStatus,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Running value)? running,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_ChangingStatus value)? changingStatus,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PixooAdapterState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_RunningCopyWith<$Res> {
  factory _$$_RunningCopyWith(
          _$_Running value, $Res Function(_$_Running) then) =
      __$$_RunningCopyWithImpl<$Res>;
  @useResult
  $Res call({TtvEmote? currentEmote});

  $TtvEmoteCopyWith<$Res>? get currentEmote;
}

/// @nodoc
class __$$_RunningCopyWithImpl<$Res>
    extends _$PixooAdapterStateCopyWithImpl<$Res, _$_Running>
    implements _$$_RunningCopyWith<$Res> {
  __$$_RunningCopyWithImpl(_$_Running _value, $Res Function(_$_Running) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentEmote = freezed,
  }) {
    return _then(_$_Running(
      currentEmote: freezed == currentEmote
          ? _value.currentEmote
          : currentEmote // ignore: cast_nullable_to_non_nullable
              as TtvEmote?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TtvEmoteCopyWith<$Res>? get currentEmote {
    if (_value.currentEmote == null) {
      return null;
    }

    return $TtvEmoteCopyWith<$Res>(_value.currentEmote!, (value) {
      return _then(_value.copyWith(currentEmote: value));
    });
  }
}

/// @nodoc

class _$_Running implements _Running {
  const _$_Running({this.currentEmote});

  @override
  final TtvEmote? currentEmote;

  @override
  String toString() {
    return 'PixooAdapterState.running(currentEmote: $currentEmote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Running &&
            (identical(other.currentEmote, currentEmote) ||
                other.currentEmote == currentEmote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentEmote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RunningCopyWith<_$_Running> get copyWith =>
      __$$_RunningCopyWithImpl<_$_Running>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TtvEmote? currentEmote) running,
    required TResult Function() stopped,
    required TResult Function() changingStatus,
  }) {
    return running(currentEmote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TtvEmote? currentEmote)? running,
    TResult? Function()? stopped,
    TResult? Function()? changingStatus,
  }) {
    return running?.call(currentEmote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TtvEmote? currentEmote)? running,
    TResult Function()? stopped,
    TResult Function()? changingStatus,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(currentEmote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Running value) running,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_ChangingStatus value) changingStatus,
  }) {
    return running(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Running value)? running,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_ChangingStatus value)? changingStatus,
  }) {
    return running?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Running value)? running,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_ChangingStatus value)? changingStatus,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(this);
    }
    return orElse();
  }
}

abstract class _Running implements PixooAdapterState {
  const factory _Running({final TtvEmote? currentEmote}) = _$_Running;

  TtvEmote? get currentEmote;
  @JsonKey(ignore: true)
  _$$_RunningCopyWith<_$_Running> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StoppedCopyWith<$Res> {
  factory _$$_StoppedCopyWith(
          _$_Stopped value, $Res Function(_$_Stopped) then) =
      __$$_StoppedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StoppedCopyWithImpl<$Res>
    extends _$PixooAdapterStateCopyWithImpl<$Res, _$_Stopped>
    implements _$$_StoppedCopyWith<$Res> {
  __$$_StoppedCopyWithImpl(_$_Stopped _value, $Res Function(_$_Stopped) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Stopped implements _Stopped {
  const _$_Stopped();

  @override
  String toString() {
    return 'PixooAdapterState.stopped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Stopped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TtvEmote? currentEmote) running,
    required TResult Function() stopped,
    required TResult Function() changingStatus,
  }) {
    return stopped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TtvEmote? currentEmote)? running,
    TResult? Function()? stopped,
    TResult? Function()? changingStatus,
  }) {
    return stopped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TtvEmote? currentEmote)? running,
    TResult Function()? stopped,
    TResult Function()? changingStatus,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Running value) running,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_ChangingStatus value) changingStatus,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Running value)? running,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_ChangingStatus value)? changingStatus,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Running value)? running,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_ChangingStatus value)? changingStatus,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }
}

abstract class _Stopped implements PixooAdapterState {
  const factory _Stopped() = _$_Stopped;
}

/// @nodoc
abstract class _$$_ChangingStatusCopyWith<$Res> {
  factory _$$_ChangingStatusCopyWith(
          _$_ChangingStatus value, $Res Function(_$_ChangingStatus) then) =
      __$$_ChangingStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChangingStatusCopyWithImpl<$Res>
    extends _$PixooAdapterStateCopyWithImpl<$Res, _$_ChangingStatus>
    implements _$$_ChangingStatusCopyWith<$Res> {
  __$$_ChangingStatusCopyWithImpl(
      _$_ChangingStatus _value, $Res Function(_$_ChangingStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ChangingStatus implements _ChangingStatus {
  const _$_ChangingStatus();

  @override
  String toString() {
    return 'PixooAdapterState.changingStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ChangingStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TtvEmote? currentEmote) running,
    required TResult Function() stopped,
    required TResult Function() changingStatus,
  }) {
    return changingStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TtvEmote? currentEmote)? running,
    TResult? Function()? stopped,
    TResult? Function()? changingStatus,
  }) {
    return changingStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TtvEmote? currentEmote)? running,
    TResult Function()? stopped,
    TResult Function()? changingStatus,
    required TResult orElse(),
  }) {
    if (changingStatus != null) {
      return changingStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Running value) running,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_ChangingStatus value) changingStatus,
  }) {
    return changingStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Running value)? running,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_ChangingStatus value)? changingStatus,
  }) {
    return changingStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Running value)? running,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_ChangingStatus value)? changingStatus,
    required TResult orElse(),
  }) {
    if (changingStatus != null) {
      return changingStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangingStatus implements PixooAdapterState {
  const factory _ChangingStatus() = _$_ChangingStatus;
}
