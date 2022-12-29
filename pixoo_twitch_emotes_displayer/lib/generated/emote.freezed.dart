// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../models/emote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmoteUrl {
  EmoteSize get size => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmoteUrlCopyWith<EmoteUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmoteUrlCopyWith<$Res> {
  factory $EmoteUrlCopyWith(EmoteUrl value, $Res Function(EmoteUrl) then) =
      _$EmoteUrlCopyWithImpl<$Res, EmoteUrl>;
  @useResult
  $Res call({EmoteSize size, String url});
}

/// @nodoc
class _$EmoteUrlCopyWithImpl<$Res, $Val extends EmoteUrl>
    implements $EmoteUrlCopyWith<$Res> {
  _$EmoteUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as EmoteSize,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmoteUrlCopyWith<$Res> implements $EmoteUrlCopyWith<$Res> {
  factory _$$_EmoteUrlCopyWith(
          _$_EmoteUrl value, $Res Function(_$_EmoteUrl) then) =
      __$$_EmoteUrlCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmoteSize size, String url});
}

/// @nodoc
class __$$_EmoteUrlCopyWithImpl<$Res>
    extends _$EmoteUrlCopyWithImpl<$Res, _$_EmoteUrl>
    implements _$$_EmoteUrlCopyWith<$Res> {
  __$$_EmoteUrlCopyWithImpl(
      _$_EmoteUrl _value, $Res Function(_$_EmoteUrl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? url = null,
  }) {
    return _then(_$_EmoteUrl(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as EmoteSize,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmoteUrl implements _EmoteUrl {
  const _$_EmoteUrl({required this.size, required this.url});

  @override
  final EmoteSize size;
  @override
  final String url;

  @override
  String toString() {
    return 'EmoteUrl(size: $size, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmoteUrl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, size, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmoteUrlCopyWith<_$_EmoteUrl> get copyWith =>
      __$$_EmoteUrlCopyWithImpl<_$_EmoteUrl>(this, _$identity);
}

abstract class _EmoteUrl implements EmoteUrl {
  const factory _EmoteUrl(
      {required final EmoteSize size, required final String url}) = _$_EmoteUrl;

  @override
  EmoteSize get size;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_EmoteUrlCopyWith<_$_EmoteUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Emote {
  EmoteProvider get provider => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  List<EmoteUrl> get urls => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmoteCopyWith<Emote> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmoteCopyWith<$Res> {
  factory $EmoteCopyWith(Emote value, $Res Function(Emote) then) =
      _$EmoteCopyWithImpl<$Res, Emote>;
  @useResult
  $Res call({EmoteProvider provider, String code, List<EmoteUrl> urls});
}

/// @nodoc
class _$EmoteCopyWithImpl<$Res, $Val extends Emote>
    implements $EmoteCopyWith<$Res> {
  _$EmoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? code = null,
    Object? urls = null,
  }) {
    return _then(_value.copyWith(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as EmoteProvider,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<EmoteUrl>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmoteCopyWith<$Res> implements $EmoteCopyWith<$Res> {
  factory _$$_EmoteCopyWith(_$_Emote value, $Res Function(_$_Emote) then) =
      __$$_EmoteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmoteProvider provider, String code, List<EmoteUrl> urls});
}

/// @nodoc
class __$$_EmoteCopyWithImpl<$Res> extends _$EmoteCopyWithImpl<$Res, _$_Emote>
    implements _$$_EmoteCopyWith<$Res> {
  __$$_EmoteCopyWithImpl(_$_Emote _value, $Res Function(_$_Emote) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? code = null,
    Object? urls = null,
  }) {
    return _then(_$_Emote(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as EmoteProvider,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      urls: null == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<EmoteUrl>,
    ));
  }
}

/// @nodoc

class _$_Emote implements _Emote {
  const _$_Emote(
      {required this.provider,
      required this.code,
      required final List<EmoteUrl> urls})
      : _urls = urls;

  @override
  final EmoteProvider provider;
  @override
  final String code;
  final List<EmoteUrl> _urls;
  @override
  List<EmoteUrl> get urls {
    if (_urls is EqualUnmodifiableListView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_urls);
  }

  @override
  String toString() {
    return 'Emote(provider: $provider, code: $code, urls: $urls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Emote &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._urls, _urls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, provider, code, const DeepCollectionEquality().hash(_urls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmoteCopyWith<_$_Emote> get copyWith =>
      __$$_EmoteCopyWithImpl<_$_Emote>(this, _$identity);
}

abstract class _Emote implements Emote {
  const factory _Emote(
      {required final EmoteProvider provider,
      required final String code,
      required final List<EmoteUrl> urls}) = _$_Emote;

  @override
  EmoteProvider get provider;
  @override
  String get code;
  @override
  List<EmoteUrl> get urls;
  @override
  @JsonKey(ignore: true)
  _$$_EmoteCopyWith<_$_Emote> get copyWith =>
      throw _privateConstructorUsedError;
}
