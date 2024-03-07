// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'demographic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Demographic _$DemographicFromJson(Map<String, dynamic> json) {
  return _Demographic.fromJson(json);
}

/// @nodoc
mixin _$Demographic {
  @JsonKey(name: "mal_id")
  int? get malId => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DemographicCopyWith<Demographic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemographicCopyWith<$Res> {
  factory $DemographicCopyWith(Demographic value, $Res Function(Demographic) then) =
      _$DemographicCopyWithImpl<$Res, Demographic>;
  @useResult
  $Res call(
      {@JsonKey(name: "mal_id") int? malId,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "url") String? url});
}

/// @nodoc
class _$DemographicCopyWithImpl<$Res, $Val extends Demographic> implements $DemographicCopyWith<$Res> {
  _$DemographicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? malId = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      malId: freezed == malId
          ? _value.malId
          : malId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DemographicImplCopyWith<$Res> implements $DemographicCopyWith<$Res> {
  factory _$$DemographicImplCopyWith(_$DemographicImpl value, $Res Function(_$DemographicImpl) then) =
      __$$DemographicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "mal_id") int? malId,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "url") String? url});
}

/// @nodoc
class __$$DemographicImplCopyWithImpl<$Res> extends _$DemographicCopyWithImpl<$Res, _$DemographicImpl>
    implements _$$DemographicImplCopyWith<$Res> {
  __$$DemographicImplCopyWithImpl(_$DemographicImpl _value, $Res Function(_$DemographicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? malId = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$DemographicImpl(
      malId: freezed == malId
          ? _value.malId
          : malId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DemographicImpl implements _Demographic {
  const _$DemographicImpl(
      {@JsonKey(name: "mal_id") this.malId,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "url") this.url});

  factory _$DemographicImpl.fromJson(Map<String, dynamic> json) => _$$DemographicImplFromJson(json);

  @override
  @JsonKey(name: "mal_id")
  final int? malId;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "url")
  final String? url;

  @override
  String toString() {
    return 'Demographic(malId: $malId, type: $type, name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemographicImpl &&
            (identical(other.malId, malId) || other.malId == malId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, malId, type, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DemographicImplCopyWith<_$DemographicImpl> get copyWith =>
      __$$DemographicImplCopyWithImpl<_$DemographicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DemographicImplToJson(
      this,
    );
  }
}

abstract class _Demographic implements Demographic {
  const factory _Demographic(
      {@JsonKey(name: "mal_id") final int? malId,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "url") final String? url}) = _$DemographicImpl;

  factory _Demographic.fromJson(Map<String, dynamic> json) = _$DemographicImpl.fromJson;

  @override
  @JsonKey(name: "mal_id")
  int? get malId;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$DemographicImplCopyWith<_$DemographicImpl> get copyWith => throw _privateConstructorUsedError;
}
