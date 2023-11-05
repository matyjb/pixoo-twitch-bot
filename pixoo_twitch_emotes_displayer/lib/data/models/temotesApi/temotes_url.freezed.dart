// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temotes_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TEmotesUrl _$TEmotesUrlFromJson(Map<String, dynamic> json) {
  return _TEmotesUrl.fromJson(json);
}

/// @nodoc
mixin _$TEmotesUrl {
  String get size => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TEmotesUrlCopyWith<TEmotesUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TEmotesUrlCopyWith<$Res> {
  factory $TEmotesUrlCopyWith(
          TEmotesUrl value, $Res Function(TEmotesUrl) then) =
      _$TEmotesUrlCopyWithImpl<$Res, TEmotesUrl>;
  @useResult
  $Res call({String size, String url});
}

/// @nodoc
class _$TEmotesUrlCopyWithImpl<$Res, $Val extends TEmotesUrl>
    implements $TEmotesUrlCopyWith<$Res> {
  _$TEmotesUrlCopyWithImpl(this._value, this._then);

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
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TEmotesUrlCopyWith<$Res>
    implements $TEmotesUrlCopyWith<$Res> {
  factory _$$_TEmotesUrlCopyWith(
          _$_TEmotesUrl value, $Res Function(_$_TEmotesUrl) then) =
      __$$_TEmotesUrlCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String size, String url});
}

/// @nodoc
class __$$_TEmotesUrlCopyWithImpl<$Res>
    extends _$TEmotesUrlCopyWithImpl<$Res, _$_TEmotesUrl>
    implements _$$_TEmotesUrlCopyWith<$Res> {
  __$$_TEmotesUrlCopyWithImpl(
      _$_TEmotesUrl _value, $Res Function(_$_TEmotesUrl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? url = null,
  }) {
    return _then(_$_TEmotesUrl(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TEmotesUrl implements _TEmotesUrl {
  const _$_TEmotesUrl({required this.size, required this.url});

  factory _$_TEmotesUrl.fromJson(Map<String, dynamic> json) =>
      _$$_TEmotesUrlFromJson(json);

  @override
  final String size;
  @override
  final String url;

  @override
  String toString() {
    return 'TEmotesUrl(size: $size, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TEmotesUrl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, size, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TEmotesUrlCopyWith<_$_TEmotesUrl> get copyWith =>
      __$$_TEmotesUrlCopyWithImpl<_$_TEmotesUrl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TEmotesUrlToJson(
      this,
    );
  }
}

abstract class _TEmotesUrl implements TEmotesUrl {
  const factory _TEmotesUrl(
      {required final String size, required final String url}) = _$_TEmotesUrl;

  factory _TEmotesUrl.fromJson(Map<String, dynamic> json) =
      _$_TEmotesUrl.fromJson;

  @override
  String get size;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_TEmotesUrlCopyWith<_$_TEmotesUrl> get copyWith =>
      throw _privateConstructorUsedError;
}
