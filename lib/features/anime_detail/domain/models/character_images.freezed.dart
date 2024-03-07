// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_images.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CharacterImages _$CharacterImagesFromJson(Map<String, dynamic> json) {
  return _CharacterImages.fromJson(json);
}

/// @nodoc
mixin _$CharacterImages {
  @JsonKey(name: "jpg")
  Jpg? get jpg => throw _privateConstructorUsedError;
  @JsonKey(name: "webp")
  Webp? get webp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterImagesCopyWith<CharacterImages> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterImagesCopyWith<$Res> {
  factory $CharacterImagesCopyWith(CharacterImages value, $Res Function(CharacterImages) then) =
      _$CharacterImagesCopyWithImpl<$Res, CharacterImages>;
  @useResult
  $Res call({@JsonKey(name: "jpg") Jpg? jpg, @JsonKey(name: "webp") Webp? webp});

  $JpgCopyWith<$Res>? get jpg;
  $WebpCopyWith<$Res>? get webp;
}

/// @nodoc
class _$CharacterImagesCopyWithImpl<$Res, $Val extends CharacterImages> implements $CharacterImagesCopyWith<$Res> {
  _$CharacterImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jpg = freezed,
    Object? webp = freezed,
  }) {
    return _then(_value.copyWith(
      jpg: freezed == jpg
          ? _value.jpg
          : jpg // ignore: cast_nullable_to_non_nullable
              as Jpg?,
      webp: freezed == webp
          ? _value.webp
          : webp // ignore: cast_nullable_to_non_nullable
              as Webp?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $JpgCopyWith<$Res>? get jpg {
    if (_value.jpg == null) {
      return null;
    }

    return $JpgCopyWith<$Res>(_value.jpg!, (value) {
      return _then(_value.copyWith(jpg: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WebpCopyWith<$Res>? get webp {
    if (_value.webp == null) {
      return null;
    }

    return $WebpCopyWith<$Res>(_value.webp!, (value) {
      return _then(_value.copyWith(webp: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterImagesImplCopyWith<$Res> implements $CharacterImagesCopyWith<$Res> {
  factory _$$CharacterImagesImplCopyWith(_$CharacterImagesImpl value, $Res Function(_$CharacterImagesImpl) then) =
      __$$CharacterImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "jpg") Jpg? jpg, @JsonKey(name: "webp") Webp? webp});

  @override
  $JpgCopyWith<$Res>? get jpg;
  @override
  $WebpCopyWith<$Res>? get webp;
}

/// @nodoc
class __$$CharacterImagesImplCopyWithImpl<$Res> extends _$CharacterImagesCopyWithImpl<$Res, _$CharacterImagesImpl>
    implements _$$CharacterImagesImplCopyWith<$Res> {
  __$$CharacterImagesImplCopyWithImpl(_$CharacterImagesImpl _value, $Res Function(_$CharacterImagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jpg = freezed,
    Object? webp = freezed,
  }) {
    return _then(_$CharacterImagesImpl(
      jpg: freezed == jpg
          ? _value.jpg
          : jpg // ignore: cast_nullable_to_non_nullable
              as Jpg?,
      webp: freezed == webp
          ? _value.webp
          : webp // ignore: cast_nullable_to_non_nullable
              as Webp?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterImagesImpl implements _CharacterImages {
  const _$CharacterImagesImpl({@JsonKey(name: "jpg") this.jpg, @JsonKey(name: "webp") this.webp});

  factory _$CharacterImagesImpl.fromJson(Map<String, dynamic> json) => _$$CharacterImagesImplFromJson(json);

  @override
  @JsonKey(name: "jpg")
  final Jpg? jpg;
  @override
  @JsonKey(name: "webp")
  final Webp? webp;

  @override
  String toString() {
    return 'CharacterImages(jpg: $jpg, webp: $webp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterImagesImpl &&
            (identical(other.jpg, jpg) || other.jpg == jpg) &&
            (identical(other.webp, webp) || other.webp == webp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jpg, webp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterImagesImplCopyWith<_$CharacterImagesImpl> get copyWith =>
      __$$CharacterImagesImplCopyWithImpl<_$CharacterImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterImagesImplToJson(
      this,
    );
  }
}

abstract class _CharacterImages implements CharacterImages {
  const factory _CharacterImages({@JsonKey(name: "jpg") final Jpg? jpg, @JsonKey(name: "webp") final Webp? webp}) =
      _$CharacterImagesImpl;

  factory _CharacterImages.fromJson(Map<String, dynamic> json) = _$CharacterImagesImpl.fromJson;

  @override
  @JsonKey(name: "jpg")
  Jpg? get jpg;
  @override
  @JsonKey(name: "webp")
  Webp? get webp;
  @override
  @JsonKey(ignore: true)
  _$$CharacterImagesImplCopyWith<_$CharacterImagesImpl> get copyWith => throw _privateConstructorUsedError;
}
