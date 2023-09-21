// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ttv_emote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TtvEmote _$TtvEmoteFromJson(Map<String, dynamic> json) {
  return _TtvEmote.fromJson(json);
}

/// @nodoc
mixin _$TtvEmote {
  String get id => throw _privateConstructorUsedError;
  @TtvEmoteProviderConverter()
  TtvEmoteProvider get provider => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get mime => throw _privateConstructorUsedError;
  int get origMaxWidth => throw _privateConstructorUsedError;
  int get origMaxHeight => throw _privateConstructorUsedError;
  String get maxQualityUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TtvEmoteCopyWith<TtvEmote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TtvEmoteCopyWith<$Res> {
  factory $TtvEmoteCopyWith(TtvEmote value, $Res Function(TtvEmote) then) =
      _$TtvEmoteCopyWithImpl<$Res, TtvEmote>;
  @useResult
  $Res call(
      {String id,
      @TtvEmoteProviderConverter() TtvEmoteProvider provider,
      String name,
      String mime,
      int origMaxWidth,
      int origMaxHeight,
      String maxQualityUrl});
}

/// @nodoc
class _$TtvEmoteCopyWithImpl<$Res, $Val extends TtvEmote>
    implements $TtvEmoteCopyWith<$Res> {
  _$TtvEmoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? provider = null,
    Object? name = null,
    Object? mime = null,
    Object? origMaxWidth = null,
    Object? origMaxHeight = null,
    Object? maxQualityUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as TtvEmoteProvider,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mime: null == mime
          ? _value.mime
          : mime // ignore: cast_nullable_to_non_nullable
              as String,
      origMaxWidth: null == origMaxWidth
          ? _value.origMaxWidth
          : origMaxWidth // ignore: cast_nullable_to_non_nullable
              as int,
      origMaxHeight: null == origMaxHeight
          ? _value.origMaxHeight
          : origMaxHeight // ignore: cast_nullable_to_non_nullable
              as int,
      maxQualityUrl: null == maxQualityUrl
          ? _value.maxQualityUrl
          : maxQualityUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TtvEmoteCopyWith<$Res> implements $TtvEmoteCopyWith<$Res> {
  factory _$$_TtvEmoteCopyWith(
          _$_TtvEmote value, $Res Function(_$_TtvEmote) then) =
      __$$_TtvEmoteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @TtvEmoteProviderConverter() TtvEmoteProvider provider,
      String name,
      String mime,
      int origMaxWidth,
      int origMaxHeight,
      String maxQualityUrl});
}

/// @nodoc
class __$$_TtvEmoteCopyWithImpl<$Res>
    extends _$TtvEmoteCopyWithImpl<$Res, _$_TtvEmote>
    implements _$$_TtvEmoteCopyWith<$Res> {
  __$$_TtvEmoteCopyWithImpl(
      _$_TtvEmote _value, $Res Function(_$_TtvEmote) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? provider = null,
    Object? name = null,
    Object? mime = null,
    Object? origMaxWidth = null,
    Object? origMaxHeight = null,
    Object? maxQualityUrl = null,
  }) {
    return _then(_$_TtvEmote(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as TtvEmoteProvider,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mime: null == mime
          ? _value.mime
          : mime // ignore: cast_nullable_to_non_nullable
              as String,
      origMaxWidth: null == origMaxWidth
          ? _value.origMaxWidth
          : origMaxWidth // ignore: cast_nullable_to_non_nullable
              as int,
      origMaxHeight: null == origMaxHeight
          ? _value.origMaxHeight
          : origMaxHeight // ignore: cast_nullable_to_non_nullable
              as int,
      maxQualityUrl: null == maxQualityUrl
          ? _value.maxQualityUrl
          : maxQualityUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TtvEmote extends _TtvEmote {
  const _$_TtvEmote(
      {required this.id,
      @TtvEmoteProviderConverter() required this.provider,
      required this.name,
      required this.mime,
      required this.origMaxWidth,
      required this.origMaxHeight,
      required this.maxQualityUrl})
      : super._();

  factory _$_TtvEmote.fromJson(Map<String, dynamic> json) =>
      _$$_TtvEmoteFromJson(json);

  @override
  final String id;
  @override
  @TtvEmoteProviderConverter()
  final TtvEmoteProvider provider;
  @override
  final String name;
  @override
  final String mime;
  @override
  final int origMaxWidth;
  @override
  final int origMaxHeight;
  @override
  final String maxQualityUrl;

  @override
  String toString() {
    return 'TtvEmote(id: $id, provider: $provider, name: $name, mime: $mime, origMaxWidth: $origMaxWidth, origMaxHeight: $origMaxHeight, maxQualityUrl: $maxQualityUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TtvEmote &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mime, mime) || other.mime == mime) &&
            (identical(other.origMaxWidth, origMaxWidth) ||
                other.origMaxWidth == origMaxWidth) &&
            (identical(other.origMaxHeight, origMaxHeight) ||
                other.origMaxHeight == origMaxHeight) &&
            (identical(other.maxQualityUrl, maxQualityUrl) ||
                other.maxQualityUrl == maxQualityUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, provider, name, mime,
      origMaxWidth, origMaxHeight, maxQualityUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TtvEmoteCopyWith<_$_TtvEmote> get copyWith =>
      __$$_TtvEmoteCopyWithImpl<_$_TtvEmote>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TtvEmoteToJson(
      this,
    );
  }
}

abstract class _TtvEmote extends TtvEmote {
  const factory _TtvEmote(
      {required final String id,
      @TtvEmoteProviderConverter() required final TtvEmoteProvider provider,
      required final String name,
      required final String mime,
      required final int origMaxWidth,
      required final int origMaxHeight,
      required final String maxQualityUrl}) = _$_TtvEmote;
  const _TtvEmote._() : super._();

  factory _TtvEmote.fromJson(Map<String, dynamic> json) = _$_TtvEmote.fromJson;

  @override
  String get id;
  @override
  @TtvEmoteProviderConverter()
  TtvEmoteProvider get provider;
  @override
  String get name;
  @override
  String get mime;
  @override
  int get origMaxWidth;
  @override
  int get origMaxHeight;
  @override
  String get maxQualityUrl;
  @override
  @JsonKey(ignore: true)
  _$$_TtvEmoteCopyWith<_$_TtvEmote> get copyWith =>
      throw _privateConstructorUsedError;
}
