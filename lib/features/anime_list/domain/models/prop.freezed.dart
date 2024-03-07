// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Prop _$PropFromJson(Map<String, dynamic> json) {
  return _Prop.fromJson(json);
}

/// @nodoc
mixin _$Prop {
  @JsonKey(name: "from")
  From? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "to")
  From? get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropCopyWith<Prop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropCopyWith<$Res> {
  factory $PropCopyWith(Prop value, $Res Function(Prop) then) = _$PropCopyWithImpl<$Res, Prop>;
  @useResult
  $Res call({@JsonKey(name: "from") From? from, @JsonKey(name: "to") From? to});

  $FromCopyWith<$Res>? get from;
  $FromCopyWith<$Res>? get to;
}

/// @nodoc
class _$PropCopyWithImpl<$Res, $Val extends Prop> implements $PropCopyWith<$Res> {
  _$PropCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as From?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as From?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FromCopyWith<$Res>? get from {
    if (_value.from == null) {
      return null;
    }

    return $FromCopyWith<$Res>(_value.from!, (value) {
      return _then(_value.copyWith(from: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FromCopyWith<$Res>? get to {
    if (_value.to == null) {
      return null;
    }

    return $FromCopyWith<$Res>(_value.to!, (value) {
      return _then(_value.copyWith(to: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropImplCopyWith<$Res> implements $PropCopyWith<$Res> {
  factory _$$PropImplCopyWith(_$PropImpl value, $Res Function(_$PropImpl) then) = __$$PropImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "from") From? from, @JsonKey(name: "to") From? to});

  @override
  $FromCopyWith<$Res>? get from;
  @override
  $FromCopyWith<$Res>? get to;
}

/// @nodoc
class __$$PropImplCopyWithImpl<$Res> extends _$PropCopyWithImpl<$Res, _$PropImpl> implements _$$PropImplCopyWith<$Res> {
  __$$PropImplCopyWithImpl(_$PropImpl _value, $Res Function(_$PropImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$PropImpl(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as From?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as From?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropImpl implements _Prop {
  const _$PropImpl({@JsonKey(name: "from") this.from, @JsonKey(name: "to") this.to});

  factory _$PropImpl.fromJson(Map<String, dynamic> json) => _$$PropImplFromJson(json);

  @override
  @JsonKey(name: "from")
  final From? from;
  @override
  @JsonKey(name: "to")
  final From? to;

  @override
  String toString() {
    return 'Prop(from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropImplCopyWith<_$PropImpl> get copyWith => __$$PropImplCopyWithImpl<_$PropImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropImplToJson(
      this,
    );
  }
}

abstract class _Prop implements Prop {
  const factory _Prop({@JsonKey(name: "from") final From? from, @JsonKey(name: "to") final From? to}) = _$PropImpl;

  factory _Prop.fromJson(Map<String, dynamic> json) = _$PropImpl.fromJson;

  @override
  @JsonKey(name: "from")
  From? get from;
  @override
  @JsonKey(name: "to")
  From? get to;
  @override
  @JsonKey(ignore: true)
  _$$PropImplCopyWith<_$PropImpl> get copyWith => throw _privateConstructorUsedError;
}
