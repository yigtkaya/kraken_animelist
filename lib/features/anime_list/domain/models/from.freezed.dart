// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'from.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

From _$FromFromJson(Map<String, dynamic> json) {
  return _From.fromJson(json);
}

/// @nodoc
mixin _$From {
  @JsonKey(name: "day")
  int? get day => throw _privateConstructorUsedError;
  @JsonKey(name: "month")
  int? get month => throw _privateConstructorUsedError;
  @JsonKey(name: "year")
  int? get year => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FromCopyWith<From> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FromCopyWith<$Res> {
  factory $FromCopyWith(From value, $Res Function(From) then) = _$FromCopyWithImpl<$Res, From>;
  @useResult
  $Res call({@JsonKey(name: "day") int? day, @JsonKey(name: "month") int? month, @JsonKey(name: "year") int? year});
}

/// @nodoc
class _$FromCopyWithImpl<$Res, $Val extends From> implements $FromCopyWith<$Res> {
  _$FromCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? month = freezed,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FromImplCopyWith<$Res> implements $FromCopyWith<$Res> {
  factory _$$FromImplCopyWith(_$FromImpl value, $Res Function(_$FromImpl) then) = __$$FromImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "day") int? day, @JsonKey(name: "month") int? month, @JsonKey(name: "year") int? year});
}

/// @nodoc
class __$$FromImplCopyWithImpl<$Res> extends _$FromCopyWithImpl<$Res, _$FromImpl> implements _$$FromImplCopyWith<$Res> {
  __$$FromImplCopyWithImpl(_$FromImpl _value, $Res Function(_$FromImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? month = freezed,
    Object? year = freezed,
  }) {
    return _then(_$FromImpl(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FromImpl implements _From {
  const _$FromImpl(
      {@JsonKey(name: "day") this.day, @JsonKey(name: "month") this.month, @JsonKey(name: "year") this.year});

  factory _$FromImpl.fromJson(Map<String, dynamic> json) => _$$FromImplFromJson(json);

  @override
  @JsonKey(name: "day")
  final int? day;
  @override
  @JsonKey(name: "month")
  final int? month;
  @override
  @JsonKey(name: "year")
  final int? year;

  @override
  String toString() {
    return 'From(day: $day, month: $month, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FromImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, month, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FromImplCopyWith<_$FromImpl> get copyWith => __$$FromImplCopyWithImpl<_$FromImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FromImplToJson(
      this,
    );
  }
}

abstract class _From implements From {
  const factory _From(
      {@JsonKey(name: "day") final int? day,
      @JsonKey(name: "month") final int? month,
      @JsonKey(name: "year") final int? year}) = _$FromImpl;

  factory _From.fromJson(Map<String, dynamic> json) = _$FromImpl.fromJson;

  @override
  @JsonKey(name: "day")
  int? get day;
  @override
  @JsonKey(name: "month")
  int? get month;
  @override
  @JsonKey(name: "year")
  int? get year;
  @override
  @JsonKey(ignore: true)
  _$$FromImplCopyWith<_$FromImpl> get copyWith => throw _privateConstructorUsedError;
}
