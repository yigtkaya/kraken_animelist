// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Character _$CharacterFromJson(Map<String, dynamic> json) {
  return _Character.fromJson(json);
}

/// @nodoc
mixin _$Character {
  @JsonKey(name: "mal_id")
  int? get malId => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  CharacterImages? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterCopyWith<Character> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) = _$CharacterCopyWithImpl<$Res, Character>;
  @useResult
  $Res call(
      {@JsonKey(name: "mal_id") int? malId,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "images") CharacterImages? images,
      @JsonKey(name: "name") String? name});

  $CharacterImagesCopyWith<$Res>? get images;
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res, $Val extends Character> implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

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
              as CharacterImages?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterImagesCopyWith<$Res>? get images {
    if (_value.images == null) {
      return null;
    }

    return $CharacterImagesCopyWith<$Res>(_value.images!, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterImplCopyWith<$Res> implements $CharacterCopyWith<$Res> {
  factory _$$CharacterImplCopyWith(_$CharacterImpl value, $Res Function(_$CharacterImpl) then) =
      __$$CharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "mal_id") int? malId,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "images") CharacterImages? images,
      @JsonKey(name: "name") String? name});

  @override
  $CharacterImagesCopyWith<$Res>? get images;
}

/// @nodoc
class __$$CharacterImplCopyWithImpl<$Res> extends _$CharacterCopyWithImpl<$Res, _$CharacterImpl>
    implements _$$CharacterImplCopyWith<$Res> {
  __$$CharacterImplCopyWithImpl(_$CharacterImpl _value, $Res Function(_$CharacterImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? malId = freezed,
    Object? url = freezed,
    Object? images = freezed,
    Object? name = freezed,
  }) {
    return _then(_$CharacterImpl(
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
              as CharacterImages?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterImpl implements _Character {
  const _$CharacterImpl(
      {@JsonKey(name: "mal_id") this.malId,
      @JsonKey(name: "url") this.url,
      @JsonKey(name: "images") this.images,
      @JsonKey(name: "name") this.name});

  factory _$CharacterImpl.fromJson(Map<String, dynamic> json) => _$$CharacterImplFromJson(json);

  @override
  @JsonKey(name: "mal_id")
  final int? malId;
  @override
  @JsonKey(name: "url")
  final String? url;
  @override
  @JsonKey(name: "images")
  final CharacterImages? images;
  @override
  @JsonKey(name: "name")
  final String? name;

  @override
  String toString() {
    return 'Character(malId: $malId, url: $url, images: $images, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterImpl &&
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
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      __$$CharacterImplCopyWithImpl<_$CharacterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterImplToJson(
      this,
    );
  }
}

abstract class _Character implements Character {
  const factory _Character(
      {@JsonKey(name: "mal_id") final int? malId,
      @JsonKey(name: "url") final String? url,
      @JsonKey(name: "images") final CharacterImages? images,
      @JsonKey(name: "name") final String? name}) = _$CharacterImpl;

  factory _Character.fromJson(Map<String, dynamic> json) = _$CharacterImpl.fromJson;

  @override
  @JsonKey(name: "mal_id")
  int? get malId;
  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(name: "images")
  CharacterImages? get images;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith => throw _privateConstructorUsedError;
}
