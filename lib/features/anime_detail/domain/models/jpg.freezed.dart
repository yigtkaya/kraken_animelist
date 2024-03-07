// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jpg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Jpg _$JpgFromJson(Map<String, dynamic> json) {
  return _Jpg.fromJson(json);
}

/// @nodoc
mixin _$Jpg {
  @JsonKey(name: "image_url")
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JpgCopyWith<Jpg> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JpgCopyWith<$Res> {
  factory $JpgCopyWith(Jpg value, $Res Function(Jpg) then) = _$JpgCopyWithImpl<$Res, Jpg>;
  @useResult
  $Res call({@JsonKey(name: "image_url") String? imageUrl});
}

/// @nodoc
class _$JpgCopyWithImpl<$Res, $Val extends Jpg> implements $JpgCopyWith<$Res> {
  _$JpgCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JpgImplCopyWith<$Res> implements $JpgCopyWith<$Res> {
  factory _$$JpgImplCopyWith(_$JpgImpl value, $Res Function(_$JpgImpl) then) = __$$JpgImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "image_url") String? imageUrl});
}

/// @nodoc
class __$$JpgImplCopyWithImpl<$Res> extends _$JpgCopyWithImpl<$Res, _$JpgImpl> implements _$$JpgImplCopyWith<$Res> {
  __$$JpgImplCopyWithImpl(_$JpgImpl _value, $Res Function(_$JpgImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_$JpgImpl(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JpgImpl implements _Jpg {
  const _$JpgImpl({@JsonKey(name: "image_url") this.imageUrl});

  factory _$JpgImpl.fromJson(Map<String, dynamic> json) => _$$JpgImplFromJson(json);

  @override
  @JsonKey(name: "image_url")
  final String? imageUrl;

  @override
  String toString() {
    return 'Jpg(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JpgImpl &&
            (identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JpgImplCopyWith<_$JpgImpl> get copyWith => __$$JpgImplCopyWithImpl<_$JpgImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JpgImplToJson(
      this,
    );
  }
}

abstract class _Jpg implements Jpg {
  const factory _Jpg({@JsonKey(name: "image_url") final String? imageUrl}) = _$JpgImpl;

  factory _Jpg.fromJson(Map<String, dynamic> json) = _$JpgImpl.fromJson;

  @override
  @JsonKey(name: "image_url")
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$JpgImplCopyWith<_$JpgImpl> get copyWith => throw _privateConstructorUsedError;
}
