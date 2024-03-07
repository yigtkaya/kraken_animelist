// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return _Items.fromJson(json);
}

/// @nodoc
mixin _$Items {
  @JsonKey(name: "count")
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsCopyWith<Items> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsCopyWith<$Res> {
  factory $ItemsCopyWith(Items value, $Res Function(Items) then) = _$ItemsCopyWithImpl<$Res, Items>;
  @useResult
  $Res call(
      {@JsonKey(name: "count") int? count,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "per_page") int? perPage});
}

/// @nodoc
class _$ItemsCopyWithImpl<$Res, $Val extends Items> implements $ItemsCopyWith<$Res> {
  _$ItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? total = freezed,
    Object? perPage = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemsImplCopyWith<$Res> implements $ItemsCopyWith<$Res> {
  factory _$$ItemsImplCopyWith(_$ItemsImpl value, $Res Function(_$ItemsImpl) then) = __$$ItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "count") int? count,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "per_page") int? perPage});
}

/// @nodoc
class __$$ItemsImplCopyWithImpl<$Res> extends _$ItemsCopyWithImpl<$Res, _$ItemsImpl>
    implements _$$ItemsImplCopyWith<$Res> {
  __$$ItemsImplCopyWithImpl(_$ItemsImpl _value, $Res Function(_$ItemsImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? total = freezed,
    Object? perPage = freezed,
  }) {
    return _then(_$ItemsImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemsImpl implements _Items {
  const _$ItemsImpl(
      {@JsonKey(name: "count") this.count,
      @JsonKey(name: "total") this.total,
      @JsonKey(name: "per_page") this.perPage});

  factory _$ItemsImpl.fromJson(Map<String, dynamic> json) => _$$ItemsImplFromJson(json);

  @override
  @JsonKey(name: "count")
  final int? count;
  @override
  @JsonKey(name: "total")
  final int? total;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;

  @override
  String toString() {
    return 'Items(count: $count, total: $total, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, total, perPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsImplCopyWith<_$ItemsImpl> get copyWith => __$$ItemsImplCopyWithImpl<_$ItemsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemsImplToJson(
      this,
    );
  }
}

abstract class _Items implements Items {
  const factory _Items(
      {@JsonKey(name: "count") final int? count,
      @JsonKey(name: "total") final int? total,
      @JsonKey(name: "per_page") final int? perPage}) = _$ItemsImpl;

  factory _Items.fromJson(Map<String, dynamic> json) = _$ItemsImpl.fromJson;

  @override
  @JsonKey(name: "count")
  int? get count;
  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  @JsonKey(ignore: true)
  _$$ItemsImplCopyWith<_$ItemsImpl> get copyWith => throw _privateConstructorUsedError;
}
