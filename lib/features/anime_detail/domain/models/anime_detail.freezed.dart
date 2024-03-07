// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnimeDetail _$AnimeDetailFromJson(Map<String, dynamic> json) {
  return _AnimeDetail.fromJson(json);
}

/// @nodoc
mixin _$AnimeDetail {
  @JsonKey(name: "character")
  Character? get character => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "favorites")
  int? get favorites => throw _privateConstructorUsedError;
  @JsonKey(name: "voice_actors")
  List<VoiceActor>? get voiceActors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimeDetailCopyWith<AnimeDetail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeDetailCopyWith<$Res> {
  factory $AnimeDetailCopyWith(AnimeDetail value, $Res Function(AnimeDetail) then) =
      _$AnimeDetailCopyWithImpl<$Res, AnimeDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "character") Character? character,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "favorites") int? favorites,
      @JsonKey(name: "voice_actors") List<VoiceActor>? voiceActors});

  $CharacterCopyWith<$Res>? get character;
}

/// @nodoc
class _$AnimeDetailCopyWithImpl<$Res, $Val extends AnimeDetail> implements $AnimeDetailCopyWith<$Res> {
  _$AnimeDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = freezed,
    Object? role = freezed,
    Object? favorites = freezed,
    Object? voiceActors = freezed,
  }) {
    return _then(_value.copyWith(
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      favorites: freezed == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as int?,
      voiceActors: freezed == voiceActors
          ? _value.voiceActors
          : voiceActors // ignore: cast_nullable_to_non_nullable
              as List<VoiceActor>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res>? get character {
    if (_value.character == null) {
      return null;
    }

    return $CharacterCopyWith<$Res>(_value.character!, (value) {
      return _then(_value.copyWith(character: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnimeDetailImplCopyWith<$Res> implements $AnimeDetailCopyWith<$Res> {
  factory _$$AnimeDetailImplCopyWith(_$AnimeDetailImpl value, $Res Function(_$AnimeDetailImpl) then) =
      __$$AnimeDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "character") Character? character,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "favorites") int? favorites,
      @JsonKey(name: "voice_actors") List<VoiceActor>? voiceActors});

  @override
  $CharacterCopyWith<$Res>? get character;
}

/// @nodoc
class __$$AnimeDetailImplCopyWithImpl<$Res> extends _$AnimeDetailCopyWithImpl<$Res, _$AnimeDetailImpl>
    implements _$$AnimeDetailImplCopyWith<$Res> {
  __$$AnimeDetailImplCopyWithImpl(_$AnimeDetailImpl _value, $Res Function(_$AnimeDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = freezed,
    Object? role = freezed,
    Object? favorites = freezed,
    Object? voiceActors = freezed,
  }) {
    return _then(_$AnimeDetailImpl(
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      favorites: freezed == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as int?,
      voiceActors: freezed == voiceActors
          ? _value._voiceActors
          : voiceActors // ignore: cast_nullable_to_non_nullable
              as List<VoiceActor>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnimeDetailImpl implements _AnimeDetail {
  const _$AnimeDetailImpl(
      {@JsonKey(name: "character") this.character,
      @JsonKey(name: "role") this.role,
      @JsonKey(name: "favorites") this.favorites,
      @JsonKey(name: "voice_actors") final List<VoiceActor>? voiceActors})
      : _voiceActors = voiceActors;

  factory _$AnimeDetailImpl.fromJson(Map<String, dynamic> json) => _$$AnimeDetailImplFromJson(json);

  @override
  @JsonKey(name: "character")
  final Character? character;
  @override
  @JsonKey(name: "role")
  final String? role;
  @override
  @JsonKey(name: "favorites")
  final int? favorites;
  final List<VoiceActor>? _voiceActors;
  @override
  @JsonKey(name: "voice_actors")
  List<VoiceActor>? get voiceActors {
    final value = _voiceActors;
    if (value == null) return null;
    if (_voiceActors is EqualUnmodifiableListView) return _voiceActors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AnimeDetail(character: $character, role: $role, favorites: $favorites, voiceActors: $voiceActors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimeDetailImpl &&
            (identical(other.character, character) || other.character == character) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.favorites, favorites) || other.favorites == favorites) &&
            const DeepCollectionEquality().equals(other._voiceActors, _voiceActors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, character, role, favorites, const DeepCollectionEquality().hash(_voiceActors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimeDetailImplCopyWith<_$AnimeDetailImpl> get copyWith =>
      __$$AnimeDetailImplCopyWithImpl<_$AnimeDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnimeDetailImplToJson(
      this,
    );
  }
}

abstract class _AnimeDetail implements AnimeDetail {
  const factory _AnimeDetail(
      {@JsonKey(name: "character") final Character? character,
      @JsonKey(name: "role") final String? role,
      @JsonKey(name: "favorites") final int? favorites,
      @JsonKey(name: "voice_actors") final List<VoiceActor>? voiceActors}) = _$AnimeDetailImpl;

  factory _AnimeDetail.fromJson(Map<String, dynamic> json) = _$AnimeDetailImpl.fromJson;

  @override
  @JsonKey(name: "character")
  Character? get character;
  @override
  @JsonKey(name: "role")
  String? get role;
  @override
  @JsonKey(name: "favorites")
  int? get favorites;
  @override
  @JsonKey(name: "voice_actors")
  List<VoiceActor>? get voiceActors;
  @override
  @JsonKey(ignore: true)
  _$$AnimeDetailImplCopyWith<_$AnimeDetailImpl> get copyWith => throw _privateConstructorUsedError;
}
