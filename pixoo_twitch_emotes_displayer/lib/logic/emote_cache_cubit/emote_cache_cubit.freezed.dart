// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emote_cache_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmoteCacheState {
// key: $id_$provider, value: path to gif file
  Map<String, String> get idProviderPathMap =>
      throw _privateConstructorUsedError;
  Map<String, Future> get preperingEmotesIds =>
      throw _privateConstructorUsedError;
  Set<String> get failedEmotesIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmoteCacheStateCopyWith<EmoteCacheState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmoteCacheStateCopyWith<$Res> {
  factory $EmoteCacheStateCopyWith(
          EmoteCacheState value, $Res Function(EmoteCacheState) then) =
      _$EmoteCacheStateCopyWithImpl<$Res, EmoteCacheState>;
  @useResult
  $Res call(
      {Map<String, String> idProviderPathMap,
      Map<String, Future> preperingEmotesIds,
      Set<String> failedEmotesIds});
}

/// @nodoc
class _$EmoteCacheStateCopyWithImpl<$Res, $Val extends EmoteCacheState>
    implements $EmoteCacheStateCopyWith<$Res> {
  _$EmoteCacheStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProviderPathMap = null,
    Object? preperingEmotesIds = null,
    Object? failedEmotesIds = null,
  }) {
    return _then(_value.copyWith(
      idProviderPathMap: null == idProviderPathMap
          ? _value.idProviderPathMap
          : idProviderPathMap // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      preperingEmotesIds: null == preperingEmotesIds
          ? _value.preperingEmotesIds
          : preperingEmotesIds // ignore: cast_nullable_to_non_nullable
              as Map<String, Future>,
      failedEmotesIds: null == failedEmotesIds
          ? _value.failedEmotesIds
          : failedEmotesIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmoteCacheStateCopyWith<$Res>
    implements $EmoteCacheStateCopyWith<$Res> {
  factory _$$_EmoteCacheStateCopyWith(
          _$_EmoteCacheState value, $Res Function(_$_EmoteCacheState) then) =
      __$$_EmoteCacheStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, String> idProviderPathMap,
      Map<String, Future> preperingEmotesIds,
      Set<String> failedEmotesIds});
}

/// @nodoc
class __$$_EmoteCacheStateCopyWithImpl<$Res>
    extends _$EmoteCacheStateCopyWithImpl<$Res, _$_EmoteCacheState>
    implements _$$_EmoteCacheStateCopyWith<$Res> {
  __$$_EmoteCacheStateCopyWithImpl(
      _$_EmoteCacheState _value, $Res Function(_$_EmoteCacheState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProviderPathMap = null,
    Object? preperingEmotesIds = null,
    Object? failedEmotesIds = null,
  }) {
    return _then(_$_EmoteCacheState(
      idProviderPathMap: null == idProviderPathMap
          ? _value._idProviderPathMap
          : idProviderPathMap // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      preperingEmotesIds: null == preperingEmotesIds
          ? _value._preperingEmotesIds
          : preperingEmotesIds // ignore: cast_nullable_to_non_nullable
              as Map<String, Future>,
      failedEmotesIds: null == failedEmotesIds
          ? _value._failedEmotesIds
          : failedEmotesIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$_EmoteCacheState implements _EmoteCacheState {
  const _$_EmoteCacheState(
      {required final Map<String, String> idProviderPathMap,
      required final Map<String, Future> preperingEmotesIds,
      required final Set<String> failedEmotesIds})
      : _idProviderPathMap = idProviderPathMap,
        _preperingEmotesIds = preperingEmotesIds,
        _failedEmotesIds = failedEmotesIds;

// key: $id_$provider, value: path to gif file
  final Map<String, String> _idProviderPathMap;
// key: $id_$provider, value: path to gif file
  @override
  Map<String, String> get idProviderPathMap {
    if (_idProviderPathMap is EqualUnmodifiableMapView)
      return _idProviderPathMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_idProviderPathMap);
  }

  final Map<String, Future> _preperingEmotesIds;
  @override
  Map<String, Future> get preperingEmotesIds {
    if (_preperingEmotesIds is EqualUnmodifiableMapView)
      return _preperingEmotesIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_preperingEmotesIds);
  }

  final Set<String> _failedEmotesIds;
  @override
  Set<String> get failedEmotesIds {
    if (_failedEmotesIds is EqualUnmodifiableSetView) return _failedEmotesIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_failedEmotesIds);
  }

  @override
  String toString() {
    return 'EmoteCacheState(idProviderPathMap: $idProviderPathMap, preperingEmotesIds: $preperingEmotesIds, failedEmotesIds: $failedEmotesIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmoteCacheState &&
            const DeepCollectionEquality()
                .equals(other._idProviderPathMap, _idProviderPathMap) &&
            const DeepCollectionEquality()
                .equals(other._preperingEmotesIds, _preperingEmotesIds) &&
            const DeepCollectionEquality()
                .equals(other._failedEmotesIds, _failedEmotesIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_idProviderPathMap),
      const DeepCollectionEquality().hash(_preperingEmotesIds),
      const DeepCollectionEquality().hash(_failedEmotesIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmoteCacheStateCopyWith<_$_EmoteCacheState> get copyWith =>
      __$$_EmoteCacheStateCopyWithImpl<_$_EmoteCacheState>(this, _$identity);
}

abstract class _EmoteCacheState implements EmoteCacheState {
  const factory _EmoteCacheState(
      {required final Map<String, String> idProviderPathMap,
      required final Map<String, Future> preperingEmotesIds,
      required final Set<String> failedEmotesIds}) = _$_EmoteCacheState;

  @override // key: $id_$provider, value: path to gif file
  Map<String, String> get idProviderPathMap;
  @override
  Map<String, Future> get preperingEmotesIds;
  @override
  Set<String> get failedEmotesIds;
  @override
  @JsonKey(ignore: true)
  _$$_EmoteCacheStateCopyWith<_$_EmoteCacheState> get copyWith =>
      throw _privateConstructorUsedError;
}
