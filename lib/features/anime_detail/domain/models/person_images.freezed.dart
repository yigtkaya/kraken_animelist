// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_images.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PersonImages _$PersonImagesFromJson(Map<String, dynamic> json) {
  return _PersonImages.fromJson(json);
}

/// @nodoc
mixin _$PersonImages {
  @JsonKey(name: "jpg")
  Jpg? get jpg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonImagesCopyWith<PersonImages> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonImagesCopyWith<$Res> {
  factory $PersonImagesCopyWith(PersonImages value, $Res Function(PersonImages) then) =
      _$PersonImagesCopyWithImpl<$Res, PersonImages>;
  @useResult
  $Res call({@JsonKey(name: "jpg") Jpg? jpg});

  $JpgCopyWith<$Res>? get jpg;
}

/// @nodoc
class _$PersonImagesCopyWithImpl<$Res, $Val extends PersonImages> implements $PersonImagesCopyWith<$Res> {
  _$PersonImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jpg = freezed,
  }) {
    return _then(_value.copyWith(
      jpg: freezed == jpg
          ? _value.jpg
          : jpg // ignore: cast_nullable_to_non_nullable
              as Jpg?,
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
}

/// @nodoc
abstract class _$$PersonImagesImplCopyWith<$Res> implements $PersonImagesCopyWith<$Res> {
  factory _$$PersonImagesImplCopyWith(_$PersonImagesImpl value, $Res Function(_$PersonImagesImpl) then) =
      __$$PersonImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "jpg") Jpg? jpg});

  @override
  $JpgCopyWith<$Res>? get jpg;
}

/// @nodoc
class __$$PersonImagesImplCopyWithImpl<$Res> extends _$PersonImagesCopyWithImpl<$Res, _$PersonImagesImpl>
    implements _$$PersonImagesImplCopyWith<$Res> {
  __$$PersonImagesImplCopyWithImpl(_$PersonImagesImpl _value, $Res Function(_$PersonImagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jpg = freezed,
  }) {
    return _then(_$PersonImagesImpl(
      jpg: freezed == jpg
          ? _value.jpg
          : jpg // ignore: cast_nullable_to_non_nullable
              as Jpg?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonImagesImpl implements _PersonImages {
  const _$PersonImagesImpl({@JsonKey(name: "jpg") this.jpg});

  factory _$PersonImagesImpl.fromJson(Map<String, dynamic> json) => _$$PersonImagesImplFromJson(json);

  @override
  @JsonKey(name: "jpg")
  final Jpg? jpg;

  @override
  String toString() {
    return 'PersonImages(jpg: $jpg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonImagesImpl &&
            (identical(other.jpg, jpg) || other.jpg == jpg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jpg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonImagesImplCopyWith<_$PersonImagesImpl> get copyWith =>
      __$$PersonImagesImplCopyWithImpl<_$PersonImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonImagesImplToJson(
      this,
    );
  }
}

abstract class _PersonImages implements PersonImages {
  const factory _PersonImages({@JsonKey(name: "jpg") final Jpg? jpg}) = _$PersonImagesImpl;

  factory _PersonImages.fromJson(Map<String, dynamic> json) = _$PersonImagesImpl.fromJson;

  @override
  @JsonKey(name: "jpg")
  Jpg? get jpg;
  @override
  @JsonKey(ignore: true)
  _$$PersonImagesImplCopyWith<_$PersonImagesImpl> get copyWith => throw _privateConstructorUsedError;
}
