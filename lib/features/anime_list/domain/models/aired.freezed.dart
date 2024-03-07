// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aired.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Aired _$AiredFromJson(Map<String, dynamic> json) {
  return _Aired.fromJson(json);
}

/// @nodoc
mixin _$Aired {
  @JsonKey(name: "from")
  DateTime? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "to")
  DateTime? get to => throw _privateConstructorUsedError;
  @JsonKey(name: "prop")
  Prop? get prop => throw _privateConstructorUsedError;
  @JsonKey(name: "string")
  String? get string => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiredCopyWith<Aired> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiredCopyWith<$Res> {
  factory $AiredCopyWith(Aired value, $Res Function(Aired) then) = _$AiredCopyWithImpl<$Res, Aired>;
  @useResult
  $Res call(
      {@JsonKey(name: "from") DateTime? from,
      @JsonKey(name: "to") DateTime? to,
      @JsonKey(name: "prop") Prop? prop,
      @JsonKey(name: "string") String? string});

  $PropCopyWith<$Res>? get prop;
}

/// @nodoc
class _$AiredCopyWithImpl<$Res, $Val extends Aired> implements $AiredCopyWith<$Res> {
  _$AiredCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? prop = freezed,
    Object? string = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      prop: freezed == prop
          ? _value.prop
          : prop // ignore: cast_nullable_to_non_nullable
              as Prop?,
      string: freezed == string
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PropCopyWith<$Res>? get prop {
    if (_value.prop == null) {
      return null;
    }

    return $PropCopyWith<$Res>(_value.prop!, (value) {
      return _then(_value.copyWith(prop: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AiredImplCopyWith<$Res> implements $AiredCopyWith<$Res> {
  factory _$$AiredImplCopyWith(_$AiredImpl value, $Res Function(_$AiredImpl) then) = __$$AiredImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "from") DateTime? from,
      @JsonKey(name: "to") DateTime? to,
      @JsonKey(name: "prop") Prop? prop,
      @JsonKey(name: "string") String? string});

  @override
  $PropCopyWith<$Res>? get prop;
}

/// @nodoc
class __$$AiredImplCopyWithImpl<$Res> extends _$AiredCopyWithImpl<$Res, _$AiredImpl>
    implements _$$AiredImplCopyWith<$Res> {
  __$$AiredImplCopyWithImpl(_$AiredImpl _value, $Res Function(_$AiredImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? prop = freezed,
    Object? string = freezed,
  }) {
    return _then(_$AiredImpl(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      prop: freezed == prop
          ? _value.prop
          : prop // ignore: cast_nullable_to_non_nullable
              as Prop?,
      string: freezed == string
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiredImpl implements _Aired {
  const _$AiredImpl(
      {@JsonKey(name: "from") this.from,
      @JsonKey(name: "to") this.to,
      @JsonKey(name: "prop") this.prop,
      @JsonKey(name: "string") this.string});

  factory _$AiredImpl.fromJson(Map<String, dynamic> json) => _$$AiredImplFromJson(json);

  @override
  @JsonKey(name: "from")
  final DateTime? from;
  @override
  @JsonKey(name: "to")
  final DateTime? to;
  @override
  @JsonKey(name: "prop")
  final Prop? prop;
  @override
  @JsonKey(name: "string")
  final String? string;

  @override
  String toString() {
    return 'Aired(from: $from, to: $to, prop: $prop, string: $string)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiredImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.prop, prop) || other.prop == prop) &&
            (identical(other.string, string) || other.string == string));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, from, to, prop, string);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AiredImplCopyWith<_$AiredImpl> get copyWith => __$$AiredImplCopyWithImpl<_$AiredImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiredImplToJson(
      this,
    );
  }
}

abstract class _Aired implements Aired {
  const factory _Aired(
      {@JsonKey(name: "from") final DateTime? from,
      @JsonKey(name: "to") final DateTime? to,
      @JsonKey(name: "prop") final Prop? prop,
      @JsonKey(name: "string") final String? string}) = _$AiredImpl;

  factory _Aired.fromJson(Map<String, dynamic> json) = _$AiredImpl.fromJson;

  @override
  @JsonKey(name: "from")
  DateTime? get from;
  @override
  @JsonKey(name: "to")
  DateTime? get to;
  @override
  @JsonKey(name: "prop")
  Prop? get prop;
  @override
  @JsonKey(name: "string")
  String? get string;
  @override
  @JsonKey(ignore: true)
  _$$AiredImplCopyWith<_$AiredImpl> get copyWith => throw _privateConstructorUsedError;
}
