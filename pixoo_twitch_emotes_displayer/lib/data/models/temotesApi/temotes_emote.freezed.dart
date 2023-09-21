// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temotes_emote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TEmotesEmote _$TEmotesEmoteFromJson(Map<String, dynamic> json) {
  return _TEmotesEmote.fromJson(json);
}

/// @nodoc
mixin _$TEmotesEmote {
  @TtvEmoteProviderConverter()
  TtvEmoteProvider get provider => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  List<TEmotesUrl> get urls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TEmotesEmoteCopyWith<TEmotesEmote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TEmotesEmoteCopyWith<$Res> {
  factory $TEmotesEmoteCopyWith(
          TEmotesEmote value, $Res Function(TEmotesEmote) then) =
      _$TEmotesEmoteCopyWithImpl<$Res, TEmotesEmote>;
  @useResult
  $Res call(
      {@TtvEmoteProviderConverter() TtvEmoteProvider provider,
      String code,
      List<TEmotesUrl> urls});
}

/// @nodoc
class _$TEmotesEmoteCopyWithImpl<$Res, $Val extends TEmotesEmote>
    implements $TEmotesEmoteCopyWith<$Res> {
  _$TEmotesEmoteCopyWithImpl(this._value, this._then);

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
              as TtvEmoteProvider,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<TEmotesUrl>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TEmotesEmoteCopyWith<$Res>
    implements $TEmotesEmoteCopyWith<$Res> {
  factory _$$_TEmotesEmoteCopyWith(
          _$_TEmotesEmote value, $Res Function(_$_TEmotesEmote) then) =
      __$$_TEmotesEmoteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TtvEmoteProviderConverter() TtvEmoteProvider provider,
      String code,
      List<TEmotesUrl> urls});
}

/// @nodoc
class __$$_TEmotesEmoteCopyWithImpl<$Res>
    extends _$TEmotesEmoteCopyWithImpl<$Res, _$_TEmotesEmote>
    implements _$$_TEmotesEmoteCopyWith<$Res> {
  __$$_TEmotesEmoteCopyWithImpl(
      _$_TEmotesEmote _value, $Res Function(_$_TEmotesEmote) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? code = null,
    Object? urls = null,
  }) {
    return _then(_$_TEmotesEmote(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as TtvEmoteProvider,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      urls: null == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<TEmotesUrl>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TEmotesEmote implements _TEmotesEmote {
  const _$_TEmotesEmote(
      {@TtvEmoteProviderConverter() required this.provider,
      required this.code,
      required final List<TEmotesUrl> urls})
      : _urls = urls;

  factory _$_TEmotesEmote.fromJson(Map<String, dynamic> json) =>
      _$$_TEmotesEmoteFromJson(json);

  @override
  @TtvEmoteProviderConverter()
  final TtvEmoteProvider provider;
  @override
  final String code;
  final List<TEmotesUrl> _urls;
  @override
  List<TEmotesUrl> get urls {
    if (_urls is EqualUnmodifiableListView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_urls);
  }

  @override
  String toString() {
    return 'TEmotesEmote(provider: $provider, code: $code, urls: $urls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TEmotesEmote &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._urls, _urls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, provider, code, const DeepCollectionEquality().hash(_urls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TEmotesEmoteCopyWith<_$_TEmotesEmote> get copyWith =>
      __$$_TEmotesEmoteCopyWithImpl<_$_TEmotesEmote>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TEmotesEmoteToJson(
      this,
    );
  }
}

abstract class _TEmotesEmote implements TEmotesEmote {
  const factory _TEmotesEmote(
      {@TtvEmoteProviderConverter() required final TtvEmoteProvider provider,
      required final String code,
      required final List<TEmotesUrl> urls}) = _$_TEmotesEmote;

  factory _TEmotesEmote.fromJson(Map<String, dynamic> json) =
      _$_TEmotesEmote.fromJson;

  @override
  @TtvEmoteProviderConverter()
  TtvEmoteProvider get provider;
  @override
  String get code;
  @override
  List<TEmotesUrl> get urls;
  @override
  @JsonKey(ignore: true)
  _$$_TEmotesEmoteCopyWith<_$_TEmotesEmote> get copyWith =>
      throw _privateConstructorUsedError;
}
