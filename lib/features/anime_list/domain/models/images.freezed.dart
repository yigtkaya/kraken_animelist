// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'images.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return _Images.fromJson(json);
}

/// @nodoc
mixin _$Images {
  @JsonKey(name: "image_url")
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "small_image_url")
  String? get smallImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "medium_image_url")
  String? get mediumImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "large_image_url")
  String? get largeImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_image_url")
  String? get maximumImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesCopyWith<Images> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesCopyWith<$Res> {
  factory $ImagesCopyWith(Images value, $Res Function(Images) then) = _$ImagesCopyWithImpl<$Res, Images>;
  @useResult
  $Res call(
      {@JsonKey(name: "image_url") String? imageUrl,
      @JsonKey(name: "small_image_url") String? smallImageUrl,
      @JsonKey(name: "medium_image_url") String? mediumImageUrl,
      @JsonKey(name: "large_image_url") String? largeImageUrl,
      @JsonKey(name: "maximum_image_url") String? maximumImageUrl});
}

/// @nodoc
class _$ImagesCopyWithImpl<$Res, $Val extends Images> implements $ImagesCopyWith<$Res> {
  _$ImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? smallImageUrl = freezed,
    Object? mediumImageUrl = freezed,
    Object? largeImageUrl = freezed,
    Object? maximumImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallImageUrl: freezed == smallImageUrl
          ? _value.smallImageUrl
          : smallImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumImageUrl: freezed == mediumImageUrl
          ? _value.mediumImageUrl
          : mediumImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeImageUrl: freezed == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumImageUrl: freezed == maximumImageUrl
          ? _value.maximumImageUrl
          : maximumImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImagesImplCopyWith<$Res> implements $ImagesCopyWith<$Res> {
  factory _$$ImagesImplCopyWith(_$ImagesImpl value, $Res Function(_$ImagesImpl) then) =
      __$$ImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "image_url") String? imageUrl,
      @JsonKey(name: "small_image_url") String? smallImageUrl,
      @JsonKey(name: "medium_image_url") String? mediumImageUrl,
      @JsonKey(name: "large_image_url") String? largeImageUrl,
      @JsonKey(name: "maximum_image_url") String? maximumImageUrl});
}

/// @nodoc
class __$$ImagesImplCopyWithImpl<$Res> extends _$ImagesCopyWithImpl<$Res, _$ImagesImpl>
    implements _$$ImagesImplCopyWith<$Res> {
  __$$ImagesImplCopyWithImpl(_$ImagesImpl _value, $Res Function(_$ImagesImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? smallImageUrl = freezed,
    Object? mediumImageUrl = freezed,
    Object? largeImageUrl = freezed,
    Object? maximumImageUrl = freezed,
  }) {
    return _then(_$ImagesImpl(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallImageUrl: freezed == smallImageUrl
          ? _value.smallImageUrl
          : smallImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumImageUrl: freezed == mediumImageUrl
          ? _value.mediumImageUrl
          : mediumImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeImageUrl: freezed == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumImageUrl: freezed == maximumImageUrl
          ? _value.maximumImageUrl
          : maximumImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImagesImpl implements _Images {
  const _$ImagesImpl(
      {@JsonKey(name: "image_url") this.imageUrl,
      @JsonKey(name: "small_image_url") this.smallImageUrl,
      @JsonKey(name: "medium_image_url") this.mediumImageUrl,
      @JsonKey(name: "large_image_url") this.largeImageUrl,
      @JsonKey(name: "maximum_image_url") this.maximumImageUrl});

  factory _$ImagesImpl.fromJson(Map<String, dynamic> json) => _$$ImagesImplFromJson(json);

  @override
  @JsonKey(name: "image_url")
  final String? imageUrl;
  @override
  @JsonKey(name: "small_image_url")
  final String? smallImageUrl;
  @override
  @JsonKey(name: "medium_image_url")
  final String? mediumImageUrl;
  @override
  @JsonKey(name: "large_image_url")
  final String? largeImageUrl;
  @override
  @JsonKey(name: "maximum_image_url")
  final String? maximumImageUrl;

  @override
  String toString() {
    return 'Images(imageUrl: $imageUrl, smallImageUrl: $smallImageUrl, mediumImageUrl: $mediumImageUrl, largeImageUrl: $largeImageUrl, maximumImageUrl: $maximumImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesImpl &&
            (identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl) &&
            (identical(other.smallImageUrl, smallImageUrl) || other.smallImageUrl == smallImageUrl) &&
            (identical(other.mediumImageUrl, mediumImageUrl) || other.mediumImageUrl == mediumImageUrl) &&
            (identical(other.largeImageUrl, largeImageUrl) || other.largeImageUrl == largeImageUrl) &&
            (identical(other.maximumImageUrl, maximumImageUrl) || other.maximumImageUrl == maximumImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, smallImageUrl, mediumImageUrl, largeImageUrl, maximumImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith => __$$ImagesImplCopyWithImpl<_$ImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesImplToJson(
      this,
    );
  }
}

abstract class _Images implements Images {
  const factory _Images(
      {@JsonKey(name: "image_url") final String? imageUrl,
      @JsonKey(name: "small_image_url") final String? smallImageUrl,
      @JsonKey(name: "medium_image_url") final String? mediumImageUrl,
      @JsonKey(name: "large_image_url") final String? largeImageUrl,
      @JsonKey(name: "maximum_image_url") final String? maximumImageUrl}) = _$ImagesImpl;

  factory _Images.fromJson(Map<String, dynamic> json) = _$ImagesImpl.fromJson;

  @override
  @JsonKey(name: "image_url")
  String? get imageUrl;
  @override
  @JsonKey(name: "small_image_url")
  String? get smallImageUrl;
  @override
  @JsonKey(name: "medium_image_url")
  String? get mediumImageUrl;
  @override
  @JsonKey(name: "large_image_url")
  String? get largeImageUrl;
  @override
  @JsonKey(name: "maximum_image_url")
  String? get maximumImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith => throw _privateConstructorUsedError;
}
