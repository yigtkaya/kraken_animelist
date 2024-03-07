// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trailer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Trailer _$TrailerFromJson(Map<String, dynamic> json) {
  return _Trailer.fromJson(json);
}

/// @nodoc
mixin _$Trailer {
  @JsonKey(name: "youtube_id")
  String? get youtubeId => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: "embed_url")
  String? get embedUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  Images? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrailerCopyWith<Trailer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailerCopyWith<$Res> {
  factory $TrailerCopyWith(Trailer value, $Res Function(Trailer) then) = _$TrailerCopyWithImpl<$Res, Trailer>;
  @useResult
  $Res call(
      {@JsonKey(name: "youtube_id") String? youtubeId,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "embed_url") String? embedUrl,
      @JsonKey(name: "images") Images? images});

  $ImagesCopyWith<$Res>? get images;
}

/// @nodoc
class _$TrailerCopyWithImpl<$Res, $Val extends Trailer> implements $TrailerCopyWith<$Res> {
  _$TrailerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? youtubeId = freezed,
    Object? url = freezed,
    Object? embedUrl = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      youtubeId: freezed == youtubeId
          ? _value.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      embedUrl: freezed == embedUrl
          ? _value.embedUrl
          : embedUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Images?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImagesCopyWith<$Res>? get images {
    if (_value.images == null) {
      return null;
    }

    return $ImagesCopyWith<$Res>(_value.images!, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrailerImplCopyWith<$Res> implements $TrailerCopyWith<$Res> {
  factory _$$TrailerImplCopyWith(_$TrailerImpl value, $Res Function(_$TrailerImpl) then) =
      __$$TrailerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "youtube_id") String? youtubeId,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "embed_url") String? embedUrl,
      @JsonKey(name: "images") Images? images});

  @override
  $ImagesCopyWith<$Res>? get images;
}

/// @nodoc
class __$$TrailerImplCopyWithImpl<$Res> extends _$TrailerCopyWithImpl<$Res, _$TrailerImpl>
    implements _$$TrailerImplCopyWith<$Res> {
  __$$TrailerImplCopyWithImpl(_$TrailerImpl _value, $Res Function(_$TrailerImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? youtubeId = freezed,
    Object? url = freezed,
    Object? embedUrl = freezed,
    Object? images = freezed,
  }) {
    return _then(_$TrailerImpl(
      youtubeId: freezed == youtubeId
          ? _value.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      embedUrl: freezed == embedUrl
          ? _value.embedUrl
          : embedUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Images?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrailerImpl implements _Trailer {
  const _$TrailerImpl(
      {@JsonKey(name: "youtube_id") this.youtubeId,
      @JsonKey(name: "url") this.url,
      @JsonKey(name: "embed_url") this.embedUrl,
      @JsonKey(name: "images") this.images});

  factory _$TrailerImpl.fromJson(Map<String, dynamic> json) => _$$TrailerImplFromJson(json);

  @override
  @JsonKey(name: "youtube_id")
  final String? youtubeId;
  @override
  @JsonKey(name: "url")
  final String? url;
  @override
  @JsonKey(name: "embed_url")
  final String? embedUrl;
  @override
  @JsonKey(name: "images")
  final Images? images;

  @override
  String toString() {
    return 'Trailer(youtubeId: $youtubeId, url: $url, embedUrl: $embedUrl, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrailerImpl &&
            (identical(other.youtubeId, youtubeId) || other.youtubeId == youtubeId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.embedUrl, embedUrl) || other.embedUrl == embedUrl) &&
            (identical(other.images, images) || other.images == images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, youtubeId, url, embedUrl, images);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrailerImplCopyWith<_$TrailerImpl> get copyWith => __$$TrailerImplCopyWithImpl<_$TrailerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrailerImplToJson(
      this,
    );
  }
}

abstract class _Trailer implements Trailer {
  const factory _Trailer(
      {@JsonKey(name: "youtube_id") final String? youtubeId,
      @JsonKey(name: "url") final String? url,
      @JsonKey(name: "embed_url") final String? embedUrl,
      @JsonKey(name: "images") final Images? images}) = _$TrailerImpl;

  factory _Trailer.fromJson(Map<String, dynamic> json) = _$TrailerImpl.fromJson;

  @override
  @JsonKey(name: "youtube_id")
  String? get youtubeId;
  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(name: "embed_url")
  String? get embedUrl;
  @override
  @JsonKey(name: "images")
  Images? get images;
  @override
  @JsonKey(ignore: true)
  _$$TrailerImplCopyWith<_$TrailerImpl> get copyWith => throw _privateConstructorUsedError;
}
