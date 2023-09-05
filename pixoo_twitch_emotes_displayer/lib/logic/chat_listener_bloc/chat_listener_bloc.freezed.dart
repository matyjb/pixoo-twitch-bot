// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_listener_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatListenerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function(Iterable<TtvEmote> emotes) reportEmotes,
    required TResult Function() refreshChannelEmotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function(Iterable<TtvEmote> emotes)? reportEmotes,
    TResult? Function()? refreshChannelEmotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function(Iterable<TtvEmote> emotes)? reportEmotes,
    TResult Function()? refreshChannelEmotes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Stop value) stop,
    required TResult Function(_ReportEmotes value) reportEmotes,
    required TResult Function(_RefreshChannelEmotes value) refreshChannelEmotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_ReportEmotes value)? reportEmotes,
    TResult? Function(_RefreshChannelEmotes value)? refreshChannelEmotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Stop value)? stop,
    TResult Function(_ReportEmotes value)? reportEmotes,
    TResult Function(_RefreshChannelEmotes value)? refreshChannelEmotes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatListenerEventCopyWith<$Res> {
  factory $ChatListenerEventCopyWith(
          ChatListenerEvent value, $Res Function(ChatListenerEvent) then) =
      _$ChatListenerEventCopyWithImpl<$Res, ChatListenerEvent>;
}

/// @nodoc
class _$ChatListenerEventCopyWithImpl<$Res, $Val extends ChatListenerEvent>
    implements $ChatListenerEventCopyWith<$Res> {
  _$ChatListenerEventCopyWithImpl(this._value, this._then);

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
    extends _$ChatListenerEventCopyWithImpl<$Res, _$_Start>
    implements _$$_StartCopyWith<$Res> {
  __$$_StartCopyWithImpl(_$_Start _value, $Res Function(_$_Start) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Start with DiagnosticableTreeMixin implements _Start {
  const _$_Start();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatListenerEvent.start()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatListenerEvent.start'));
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
    required TResult Function(Iterable<TtvEmote> emotes) reportEmotes,
    required TResult Function() refreshChannelEmotes,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function(Iterable<TtvEmote> emotes)? reportEmotes,
    TResult? Function()? refreshChannelEmotes,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function(Iterable<TtvEmote> emotes)? reportEmotes,
    TResult Function()? refreshChannelEmotes,
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
    required TResult Function(_ReportEmotes value) reportEmotes,
    required TResult Function(_RefreshChannelEmotes value) refreshChannelEmotes,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_ReportEmotes value)? reportEmotes,
    TResult? Function(_RefreshChannelEmotes value)? refreshChannelEmotes,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Stop value)? stop,
    TResult Function(_ReportEmotes value)? reportEmotes,
    TResult Function(_RefreshChannelEmotes value)? refreshChannelEmotes,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements ChatListenerEvent {
  const factory _Start() = _$_Start;
}

/// @nodoc
abstract class _$$_StopCopyWith<$Res> {
  factory _$$_StopCopyWith(_$_Stop value, $Res Function(_$_Stop) then) =
      __$$_StopCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StopCopyWithImpl<$Res>
    extends _$ChatListenerEventCopyWithImpl<$Res, _$_Stop>
    implements _$$_StopCopyWith<$Res> {
  __$$_StopCopyWithImpl(_$_Stop _value, $Res Function(_$_Stop) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Stop with DiagnosticableTreeMixin implements _Stop {
  const _$_Stop();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatListenerEvent.stop()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatListenerEvent.stop'));
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
    required TResult Function(Iterable<TtvEmote> emotes) reportEmotes,
    required TResult Function() refreshChannelEmotes,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function(Iterable<TtvEmote> emotes)? reportEmotes,
    TResult? Function()? refreshChannelEmotes,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function(Iterable<TtvEmote> emotes)? reportEmotes,
    TResult Function()? refreshChannelEmotes,
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
    required TResult Function(_ReportEmotes value) reportEmotes,
    required TResult Function(_RefreshChannelEmotes value) refreshChannelEmotes,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_ReportEmotes value)? reportEmotes,
    TResult? Function(_RefreshChannelEmotes value)? refreshChannelEmotes,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Stop value)? stop,
    TResult Function(_ReportEmotes value)? reportEmotes,
    TResult Function(_RefreshChannelEmotes value)? refreshChannelEmotes,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _Stop implements ChatListenerEvent {
  const factory _Stop() = _$_Stop;
}

/// @nodoc
abstract class _$$_ReportEmotesCopyWith<$Res> {
  factory _$$_ReportEmotesCopyWith(
          _$_ReportEmotes value, $Res Function(_$_ReportEmotes) then) =
      __$$_ReportEmotesCopyWithImpl<$Res>;
  @useResult
  $Res call({Iterable<TtvEmote> emotes});
}

/// @nodoc
class __$$_ReportEmotesCopyWithImpl<$Res>
    extends _$ChatListenerEventCopyWithImpl<$Res, _$_ReportEmotes>
    implements _$$_ReportEmotesCopyWith<$Res> {
  __$$_ReportEmotesCopyWithImpl(
      _$_ReportEmotes _value, $Res Function(_$_ReportEmotes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emotes = null,
  }) {
    return _then(_$_ReportEmotes(
      null == emotes
          ? _value.emotes
          : emotes // ignore: cast_nullable_to_non_nullable
              as Iterable<TtvEmote>,
    ));
  }
}

/// @nodoc

class _$_ReportEmotes with DiagnosticableTreeMixin implements _ReportEmotes {
  const _$_ReportEmotes(this.emotes);

  @override
  final Iterable<TtvEmote> emotes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatListenerEvent.reportEmotes(emotes: $emotes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatListenerEvent.reportEmotes'))
      ..add(DiagnosticsProperty('emotes', emotes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportEmotes &&
            const DeepCollectionEquality().equals(other.emotes, emotes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(emotes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReportEmotesCopyWith<_$_ReportEmotes> get copyWith =>
      __$$_ReportEmotesCopyWithImpl<_$_ReportEmotes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function(Iterable<TtvEmote> emotes) reportEmotes,
    required TResult Function() refreshChannelEmotes,
  }) {
    return reportEmotes(emotes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function(Iterable<TtvEmote> emotes)? reportEmotes,
    TResult? Function()? refreshChannelEmotes,
  }) {
    return reportEmotes?.call(emotes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function(Iterable<TtvEmote> emotes)? reportEmotes,
    TResult Function()? refreshChannelEmotes,
    required TResult orElse(),
  }) {
    if (reportEmotes != null) {
      return reportEmotes(emotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Stop value) stop,
    required TResult Function(_ReportEmotes value) reportEmotes,
    required TResult Function(_RefreshChannelEmotes value) refreshChannelEmotes,
  }) {
    return reportEmotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_ReportEmotes value)? reportEmotes,
    TResult? Function(_RefreshChannelEmotes value)? refreshChannelEmotes,
  }) {
    return reportEmotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Stop value)? stop,
    TResult Function(_ReportEmotes value)? reportEmotes,
    TResult Function(_RefreshChannelEmotes value)? refreshChannelEmotes,
    required TResult orElse(),
  }) {
    if (reportEmotes != null) {
      return reportEmotes(this);
    }
    return orElse();
  }
}

abstract class _ReportEmotes implements ChatListenerEvent {
  const factory _ReportEmotes(final Iterable<TtvEmote> emotes) =
      _$_ReportEmotes;

  Iterable<TtvEmote> get emotes;
  @JsonKey(ignore: true)
  _$$_ReportEmotesCopyWith<_$_ReportEmotes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshChannelEmotesCopyWith<$Res> {
  factory _$$_RefreshChannelEmotesCopyWith(_$_RefreshChannelEmotes value,
          $Res Function(_$_RefreshChannelEmotes) then) =
      __$$_RefreshChannelEmotesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshChannelEmotesCopyWithImpl<$Res>
    extends _$ChatListenerEventCopyWithImpl<$Res, _$_RefreshChannelEmotes>
    implements _$$_RefreshChannelEmotesCopyWith<$Res> {
  __$$_RefreshChannelEmotesCopyWithImpl(_$_RefreshChannelEmotes _value,
      $Res Function(_$_RefreshChannelEmotes) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshChannelEmotes
    with DiagnosticableTreeMixin
    implements _RefreshChannelEmotes {
  const _$_RefreshChannelEmotes();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatListenerEvent.refreshChannelEmotes()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'ChatListenerEvent.refreshChannelEmotes'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RefreshChannelEmotes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function(Iterable<TtvEmote> emotes) reportEmotes,
    required TResult Function() refreshChannelEmotes,
  }) {
    return refreshChannelEmotes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function(Iterable<TtvEmote> emotes)? reportEmotes,
    TResult? Function()? refreshChannelEmotes,
  }) {
    return refreshChannelEmotes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function(Iterable<TtvEmote> emotes)? reportEmotes,
    TResult Function()? refreshChannelEmotes,
    required TResult orElse(),
  }) {
    if (refreshChannelEmotes != null) {
      return refreshChannelEmotes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Stop value) stop,
    required TResult Function(_ReportEmotes value) reportEmotes,
    required TResult Function(_RefreshChannelEmotes value) refreshChannelEmotes,
  }) {
    return refreshChannelEmotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_ReportEmotes value)? reportEmotes,
    TResult? Function(_RefreshChannelEmotes value)? refreshChannelEmotes,
  }) {
    return refreshChannelEmotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Stop value)? stop,
    TResult Function(_ReportEmotes value)? reportEmotes,
    TResult Function(_RefreshChannelEmotes value)? refreshChannelEmotes,
    required TResult orElse(),
  }) {
    if (refreshChannelEmotes != null) {
      return refreshChannelEmotes(this);
    }
    return orElse();
  }
}

abstract class _RefreshChannelEmotes implements ChatListenerEvent {
  const factory _RefreshChannelEmotes() = _$_RefreshChannelEmotes;
}

/// @nodoc
mixin _$ChatListenerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<TtvEmote> emotesBuffer,
            List<TtvEmote> emotesRanking,
            HashMap<String, TtvEmote> emotesOnChannel,
            Map<TtvEmote, int> emotesPoints)
        running,
    required TResult Function() stopped,
    required TResult Function() changingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<TtvEmote> emotesBuffer,
            List<TtvEmote> emotesRanking,
            HashMap<String, TtvEmote> emotesOnChannel,
            Map<TtvEmote, int> emotesPoints)?
        running,
    TResult? Function()? stopped,
    TResult? Function()? changingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<TtvEmote> emotesBuffer,
            List<TtvEmote> emotesRanking,
            HashMap<String, TtvEmote> emotesOnChannel,
            Map<TtvEmote, int> emotesPoints)?
        running,
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
abstract class $ChatListenerStateCopyWith<$Res> {
  factory $ChatListenerStateCopyWith(
          ChatListenerState value, $Res Function(ChatListenerState) then) =
      _$ChatListenerStateCopyWithImpl<$Res, ChatListenerState>;
}

/// @nodoc
class _$ChatListenerStateCopyWithImpl<$Res, $Val extends ChatListenerState>
    implements $ChatListenerStateCopyWith<$Res> {
  _$ChatListenerStateCopyWithImpl(this._value, this._then);

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
    extends _$ChatListenerStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatListenerState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatListenerState.initial'));
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
    required TResult Function(
            List<TtvEmote> emotesBuffer,
            List<TtvEmote> emotesRanking,
            HashMap<String, TtvEmote> emotesOnChannel,
            Map<TtvEmote, int> emotesPoints)
        running,
    required TResult Function() stopped,
    required TResult Function() changingStatus,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<TtvEmote> emotesBuffer,
            List<TtvEmote> emotesRanking,
            HashMap<String, TtvEmote> emotesOnChannel,
            Map<TtvEmote, int> emotesPoints)?
        running,
    TResult? Function()? stopped,
    TResult? Function()? changingStatus,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<TtvEmote> emotesBuffer,
            List<TtvEmote> emotesRanking,
            HashMap<String, TtvEmote> emotesOnChannel,
            Map<TtvEmote, int> emotesPoints)?
        running,
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

abstract class _Initial implements ChatListenerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_RunningCopyWith<$Res> {
  factory _$$_RunningCopyWith(
          _$_Running value, $Res Function(_$_Running) then) =
      __$$_RunningCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<TtvEmote> emotesBuffer,
      List<TtvEmote> emotesRanking,
      HashMap<String, TtvEmote> emotesOnChannel,
      Map<TtvEmote, int> emotesPoints});
}

/// @nodoc
class __$$_RunningCopyWithImpl<$Res>
    extends _$ChatListenerStateCopyWithImpl<$Res, _$_Running>
    implements _$$_RunningCopyWith<$Res> {
  __$$_RunningCopyWithImpl(_$_Running _value, $Res Function(_$_Running) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emotesBuffer = null,
    Object? emotesRanking = null,
    Object? emotesOnChannel = null,
    Object? emotesPoints = null,
  }) {
    return _then(_$_Running(
      emotesBuffer: null == emotesBuffer
          ? _value._emotesBuffer
          : emotesBuffer // ignore: cast_nullable_to_non_nullable
              as List<TtvEmote>,
      emotesRanking: null == emotesRanking
          ? _value._emotesRanking
          : emotesRanking // ignore: cast_nullable_to_non_nullable
              as List<TtvEmote>,
      emotesOnChannel: null == emotesOnChannel
          ? _value.emotesOnChannel
          : emotesOnChannel // ignore: cast_nullable_to_non_nullable
              as HashMap<String, TtvEmote>,
      emotesPoints: null == emotesPoints
          ? _value._emotesPoints
          : emotesPoints // ignore: cast_nullable_to_non_nullable
              as Map<TtvEmote, int>,
    ));
  }
}

/// @nodoc

class _$_Running with DiagnosticableTreeMixin implements _Running {
  const _$_Running(
      {required final List<TtvEmote> emotesBuffer,
      required final List<TtvEmote> emotesRanking,
      required this.emotesOnChannel,
      required final Map<TtvEmote, int> emotesPoints})
      : _emotesBuffer = emotesBuffer,
        _emotesRanking = emotesRanking,
        _emotesPoints = emotesPoints;

  final List<TtvEmote> _emotesBuffer;
  @override
  List<TtvEmote> get emotesBuffer {
    if (_emotesBuffer is EqualUnmodifiableListView) return _emotesBuffer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emotesBuffer);
  }

  final List<TtvEmote> _emotesRanking;
  @override
  List<TtvEmote> get emotesRanking {
    if (_emotesRanking is EqualUnmodifiableListView) return _emotesRanking;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emotesRanking);
  }

  @override
  final HashMap<String, TtvEmote> emotesOnChannel;
  final Map<TtvEmote, int> _emotesPoints;
  @override
  Map<TtvEmote, int> get emotesPoints {
    if (_emotesPoints is EqualUnmodifiableMapView) return _emotesPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_emotesPoints);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatListenerState.running(emotesBuffer: $emotesBuffer, emotesRanking: $emotesRanking, emotesOnChannel: $emotesOnChannel, emotesPoints: $emotesPoints)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatListenerState.running'))
      ..add(DiagnosticsProperty('emotesBuffer', emotesBuffer))
      ..add(DiagnosticsProperty('emotesRanking', emotesRanking))
      ..add(DiagnosticsProperty('emotesOnChannel', emotesOnChannel))
      ..add(DiagnosticsProperty('emotesPoints', emotesPoints));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Running &&
            const DeepCollectionEquality()
                .equals(other._emotesBuffer, _emotesBuffer) &&
            const DeepCollectionEquality()
                .equals(other._emotesRanking, _emotesRanking) &&
            const DeepCollectionEquality()
                .equals(other.emotesOnChannel, emotesOnChannel) &&
            const DeepCollectionEquality()
                .equals(other._emotesPoints, _emotesPoints));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_emotesBuffer),
      const DeepCollectionEquality().hash(_emotesRanking),
      const DeepCollectionEquality().hash(emotesOnChannel),
      const DeepCollectionEquality().hash(_emotesPoints));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RunningCopyWith<_$_Running> get copyWith =>
      __$$_RunningCopyWithImpl<_$_Running>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<TtvEmote> emotesBuffer,
            List<TtvEmote> emotesRanking,
            HashMap<String, TtvEmote> emotesOnChannel,
            Map<TtvEmote, int> emotesPoints)
        running,
    required TResult Function() stopped,
    required TResult Function() changingStatus,
  }) {
    return running(emotesBuffer, emotesRanking, emotesOnChannel, emotesPoints);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<TtvEmote> emotesBuffer,
            List<TtvEmote> emotesRanking,
            HashMap<String, TtvEmote> emotesOnChannel,
            Map<TtvEmote, int> emotesPoints)?
        running,
    TResult? Function()? stopped,
    TResult? Function()? changingStatus,
  }) {
    return running?.call(
        emotesBuffer, emotesRanking, emotesOnChannel, emotesPoints);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<TtvEmote> emotesBuffer,
            List<TtvEmote> emotesRanking,
            HashMap<String, TtvEmote> emotesOnChannel,
            Map<TtvEmote, int> emotesPoints)?
        running,
    TResult Function()? stopped,
    TResult Function()? changingStatus,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(
          emotesBuffer, emotesRanking, emotesOnChannel, emotesPoints);
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

abstract class _Running implements ChatListenerState {
  const factory _Running(
      {required final List<TtvEmote> emotesBuffer,
      required final List<TtvEmote> emotesRanking,
      required final HashMap<String, TtvEmote> emotesOnChannel,
      required final Map<TtvEmote, int> emotesPoints}) = _$_Running;

  List<TtvEmote> get emotesBuffer;
  List<TtvEmote> get emotesRanking;
  HashMap<String, TtvEmote> get emotesOnChannel;
  Map<TtvEmote, int> get emotesPoints;
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
    extends _$ChatListenerStateCopyWithImpl<$Res, _$_Stopped>
    implements _$$_StoppedCopyWith<$Res> {
  __$$_StoppedCopyWithImpl(_$_Stopped _value, $Res Function(_$_Stopped) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Stopped with DiagnosticableTreeMixin implements _Stopped {
  const _$_Stopped();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatListenerState.stopped()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatListenerState.stopped'));
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
    required TResult Function(
            List<TtvEmote> emotesBuffer,
            List<TtvEmote> emotesRanking,
            HashMap<String, TtvEmote> emotesOnChannel,
            Map<TtvEmote, int> emotesPoints)
        running,
    required TResult Function() stopped,
    required TResult Function() changingStatus,
  }) {
    return stopped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<TtvEmote> emotesBuffer,
            List<TtvEmote> emotesRanking,
            HashMap<String, TtvEmote> emotesOnChannel,
            Map<TtvEmote, int> emotesPoints)?
        running,
    TResult? Function()? stopped,
    TResult? Function()? changingStatus,
  }) {
    return stopped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<TtvEmote> emotesBuffer,
            List<TtvEmote> emotesRanking,
            HashMap<String, TtvEmote> emotesOnChannel,
            Map<TtvEmote, int> emotesPoints)?
        running,
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

abstract class _Stopped implements ChatListenerState {
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
    extends _$ChatListenerStateCopyWithImpl<$Res, _$_ChangingStatus>
    implements _$$_ChangingStatusCopyWith<$Res> {
  __$$_ChangingStatusCopyWithImpl(
      _$_ChangingStatus _value, $Res Function(_$_ChangingStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ChangingStatus
    with DiagnosticableTreeMixin
    implements _ChangingStatus {
  const _$_ChangingStatus();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatListenerState.changingStatus()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ChatListenerState.changingStatus'));
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
    required TResult Function(
            List<TtvEmote> emotesBuffer,
            List<TtvEmote> emotesRanking,
            HashMap<String, TtvEmote> emotesOnChannel,
            Map<TtvEmote, int> emotesPoints)
        running,
    required TResult Function() stopped,
    required TResult Function() changingStatus,
  }) {
    return changingStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<TtvEmote> emotesBuffer,
            List<TtvEmote> emotesRanking,
            HashMap<String, TtvEmote> emotesOnChannel,
            Map<TtvEmote, int> emotesPoints)?
        running,
    TResult? Function()? stopped,
    TResult? Function()? changingStatus,
  }) {
    return changingStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<TtvEmote> emotesBuffer,
            List<TtvEmote> emotesRanking,
            HashMap<String, TtvEmote> emotesOnChannel,
            Map<TtvEmote, int> emotesPoints)?
        running,
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

abstract class _ChangingStatus implements ChatListenerState {
  const factory _ChangingStatus() = _$_ChangingStatus;
}
