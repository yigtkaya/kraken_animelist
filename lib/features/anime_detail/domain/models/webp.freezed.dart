// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Webp _$WebpFromJson(Map<String, dynamic> json) {
  return _Webp.fromJson(json);
}

/// @nodoc
mixin _$Webp {
  @JsonKey(name: "image_url")
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "small_image_url")
  String? get smallImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebpCopyWith<Webp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebpCopyWith<$Res> {
  factory $WebpCopyWith(Webp value, $Res Function(Webp) then) = _$WebpCopyWithImpl<$Res, Webp>;
  @useResult
  $Res call({@JsonKey(name: "image_url") String? imageUrl, @JsonKey(name: "small_image_url") String? smallImageUrl});
}

/// @nodoc
class _$WebpCopyWithImpl<$Res, $Val extends Webp> implements $WebpCopyWith<$Res> {
  _$WebpCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? smallImageUrl = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebpImplCopyWith<$Res> implements $WebpCopyWith<$Res> {
  factory _$$WebpImplCopyWith(_$WebpImpl value, $Res Function(_$WebpImpl) then) = __$$WebpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "image_url") String? imageUrl, @JsonKey(name: "small_image_url") String? smallImageUrl});
}

/// @nodoc
class __$$WebpImplCopyWithImpl<$Res> extends _$WebpCopyWithImpl<$Res, _$WebpImpl> implements _$$WebpImplCopyWith<$Res> {
  __$$WebpImplCopyWithImpl(_$WebpImpl _value, $Res Function(_$WebpImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? smallImageUrl = freezed,
  }) {
    return _then(_$WebpImpl(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallImageUrl: freezed == smallImageUrl
          ? _value.smallImageUrl
          : smallImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebpImpl implements _Webp {
  const _$WebpImpl({@JsonKey(name: "image_url") this.imageUrl, @JsonKey(name: "small_image_url") this.smallImageUrl});

  factory _$WebpImpl.fromJson(Map<String, dynamic> json) => _$$WebpImplFromJson(json);

  @override
  @JsonKey(name: "image_url")
  final String? imageUrl;
  @override
  @JsonKey(name: "small_image_url")
  final String? smallImageUrl;

  @override
  String toString() {
    return 'Webp(imageUrl: $imageUrl, smallImageUrl: $smallImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebpImpl &&
            (identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl) &&
            (identical(other.smallImageUrl, smallImageUrl) || other.smallImageUrl == smallImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, smallImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebpImplCopyWith<_$WebpImpl> get copyWith => __$$WebpImplCopyWithImpl<_$WebpImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebpImplToJson(
      this,
    );
  }
}

abstract class _Webp implements Webp {
  const factory _Webp(
      {@JsonKey(name: "image_url") final String? imageUrl,
      @JsonKey(name: "small_image_url") final String? smallImageUrl}) = _$WebpImpl;

  factory _Webp.fromJson(Map<String, dynamic> json) = _$WebpImpl.fromJson;

  @override
  @JsonKey(name: "image_url")
  String? get imageUrl;
  @override
  @JsonKey(name: "small_image_url")
  String? get smallImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$WebpImplCopyWith<_$WebpImpl> get copyWith => throw _privateConstructorUsedError;
}
