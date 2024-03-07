// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voice_actor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VoiceActor _$VoiceActorFromJson(Map<String, dynamic> json) {
  return _VoiceActor.fromJson(json);
}

/// @nodoc
mixin _$VoiceActor {
  @JsonKey(name: "person")
  Person? get person => throw _privateConstructorUsedError;
  @JsonKey(name: "language")
  String? get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoiceActorCopyWith<VoiceActor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoiceActorCopyWith<$Res> {
  factory $VoiceActorCopyWith(VoiceActor value, $Res Function(VoiceActor) then) =
      _$VoiceActorCopyWithImpl<$Res, VoiceActor>;
  @useResult
  $Res call({@JsonKey(name: "person") Person? person, @JsonKey(name: "language") String? language});

  $PersonCopyWith<$Res>? get person;
}

/// @nodoc
class _$VoiceActorCopyWithImpl<$Res, $Val extends VoiceActor> implements $VoiceActorCopyWith<$Res> {
  _$VoiceActorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? person = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonCopyWith<$Res>? get person {
    if (_value.person == null) {
      return null;
    }

    return $PersonCopyWith<$Res>(_value.person!, (value) {
      return _then(_value.copyWith(person: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VoiceActorImplCopyWith<$Res> implements $VoiceActorCopyWith<$Res> {
  factory _$$VoiceActorImplCopyWith(_$VoiceActorImpl value, $Res Function(_$VoiceActorImpl) then) =
      __$$VoiceActorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "person") Person? person, @JsonKey(name: "language") String? language});

  @override
  $PersonCopyWith<$Res>? get person;
}

/// @nodoc
class __$$VoiceActorImplCopyWithImpl<$Res> extends _$VoiceActorCopyWithImpl<$Res, _$VoiceActorImpl>
    implements _$$VoiceActorImplCopyWith<$Res> {
  __$$VoiceActorImplCopyWithImpl(_$VoiceActorImpl _value, $Res Function(_$VoiceActorImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? person = freezed,
    Object? language = freezed,
  }) {
    return _then(_$VoiceActorImpl(
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VoiceActorImpl implements _VoiceActor {
  const _$VoiceActorImpl({@JsonKey(name: "person") this.person, @JsonKey(name: "language") this.language});

  factory _$VoiceActorImpl.fromJson(Map<String, dynamic> json) => _$$VoiceActorImplFromJson(json);

  @override
  @JsonKey(name: "person")
  final Person? person;
  @override
  @JsonKey(name: "language")
  final String? language;

  @override
  String toString() {
    return 'VoiceActor(person: $person, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoiceActorImpl &&
            (identical(other.person, person) || other.person == person) &&
            (identical(other.language, language) || other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, person, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoiceActorImplCopyWith<_$VoiceActorImpl> get copyWith =>
      __$$VoiceActorImplCopyWithImpl<_$VoiceActorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VoiceActorImplToJson(
      this,
    );
  }
}

abstract class _VoiceActor implements VoiceActor {
  const factory _VoiceActor(
      {@JsonKey(name: "person") final Person? person,
      @JsonKey(name: "language") final String? language}) = _$VoiceActorImpl;

  factory _VoiceActor.fromJson(Map<String, dynamic> json) = _$VoiceActorImpl.fromJson;

  @override
  @JsonKey(name: "person")
  Person? get person;
  @override
  @JsonKey(name: "language")
  String? get language;
  @override
  @JsonKey(ignore: true)
  _$$VoiceActorImplCopyWith<_$VoiceActorImpl> get copyWith => throw _privateConstructorUsedError;
}
