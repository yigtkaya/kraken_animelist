// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Person _$PersonFromJson(Map<String, dynamic> json) {
  return _Person.fromJson(json);
}

/// @nodoc
mixin _$Person {
  @JsonKey(name: "mal_id")
  int? get malId => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  PersonImages? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonCopyWith<Person> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) then) = _$PersonCopyWithImpl<$Res, Person>;
  @useResult
  $Res call(
      {@JsonKey(name: "mal_id") int? malId,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "images") PersonImages? images,
      @JsonKey(name: "name") String? name});

  $PersonImagesCopyWith<$Res>? get images;
}

/// @nodoc
class _$PersonCopyWithImpl<$Res, $Val extends Person> implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? malId = freezed,
    Object? url = freezed,
    Object? images = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      malId: freezed == malId
          ? _value.malId
          : malId // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as PersonImages?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonImagesCopyWith<$Res>? get images {
    if (_value.images == null) {
      return null;
    }

    return $PersonImagesCopyWith<$Res>(_value.images!, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PersonImplCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$$PersonImplCopyWith(_$PersonImpl value, $Res Function(_$PersonImpl) then) =
      __$$PersonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "mal_id") int? malId,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "images") PersonImages? images,
      @JsonKey(name: "name") String? name});

  @override
  $PersonImagesCopyWith<$Res>? get images;
}

/// @nodoc
class __$$PersonImplCopyWithImpl<$Res> extends _$PersonCopyWithImpl<$Res, _$PersonImpl>
    implements _$$PersonImplCopyWith<$Res> {
  __$$PersonImplCopyWithImpl(_$PersonImpl _value, $Res Function(_$PersonImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? malId = freezed,
    Object? url = freezed,
    Object? images = freezed,
    Object? name = freezed,
  }) {
    return _then(_$PersonImpl(
      malId: freezed == malId
          ? _value.malId
          : malId // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as PersonImages?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonImpl implements _Person {
  const _$PersonImpl(
      {@JsonKey(name: "mal_id") this.malId,
      @JsonKey(name: "url") this.url,
      @JsonKey(name: "images") this.images,
      @JsonKey(name: "name") this.name});

  factory _$PersonImpl.fromJson(Map<String, dynamic> json) => _$$PersonImplFromJson(json);

  @override
  @JsonKey(name: "mal_id")
  final int? malId;
  @override
  @JsonKey(name: "url")
  final String? url;
  @override
  @JsonKey(name: "images")
  final PersonImages? images;
  @override
  @JsonKey(name: "name")
  final String? name;

  @override
  String toString() {
    return 'Person(malId: $malId, url: $url, images: $images, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonImpl &&
            (identical(other.malId, malId) || other.malId == malId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, malId, url, images, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonImplCopyWith<_$PersonImpl> get copyWith => __$$PersonImplCopyWithImpl<_$PersonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonImplToJson(
      this,
    );
  }
}

abstract class _Person implements Person {
  const factory _Person(
      {@JsonKey(name: "mal_id") final int? malId,
      @JsonKey(name: "url") final String? url,
      @JsonKey(name: "images") final PersonImages? images,
      @JsonKey(name: "name") final String? name}) = _$PersonImpl;

  factory _Person.fromJson(Map<String, dynamic> json) = _$PersonImpl.fromJson;

  @override
  @JsonKey(name: "mal_id")
  int? get malId;
  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(name: "images")
  PersonImages? get images;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$PersonImplCopyWith<_$PersonImpl> get copyWith => throw _privateConstructorUsedError;
}
