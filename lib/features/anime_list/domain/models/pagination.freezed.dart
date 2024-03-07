// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return _Pagination.fromJson(json);
}

/// @nodoc
mixin _$Pagination {
  @JsonKey(name: "last_visible_page")
  int? get lastVisiblePage => throw _privateConstructorUsedError;
  @JsonKey(name: "has_next_page")
  bool? get hasNextPage => throw _privateConstructorUsedError;
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "items")
  Items? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationCopyWith<Pagination> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
  @useResult
  $Res call(
      {@JsonKey(name: "last_visible_page") int? lastVisiblePage,
      @JsonKey(name: "has_next_page") bool? hasNextPage,
      @JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "items") Items? items});

  $ItemsCopyWith<$Res>? get items;
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination> implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastVisiblePage = freezed,
    Object? hasNextPage = freezed,
    Object? currentPage = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      lastVisiblePage: freezed == lastVisiblePage
          ? _value.lastVisiblePage
          : lastVisiblePage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Items?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemsCopyWith<$Res>? get items {
    if (_value.items == null) {
      return null;
    }

    return $ItemsCopyWith<$Res>(_value.items!, (value) {
      return _then(_value.copyWith(items: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginationImplCopyWith<$Res> implements $PaginationCopyWith<$Res> {
  factory _$$PaginationImplCopyWith(_$PaginationImpl value, $Res Function(_$PaginationImpl) then) =
      __$$PaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "last_visible_page") int? lastVisiblePage,
      @JsonKey(name: "has_next_page") bool? hasNextPage,
      @JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "items") Items? items});

  @override
  $ItemsCopyWith<$Res>? get items;
}

/// @nodoc
class __$$PaginationImplCopyWithImpl<$Res> extends _$PaginationCopyWithImpl<$Res, _$PaginationImpl>
    implements _$$PaginationImplCopyWith<$Res> {
  __$$PaginationImplCopyWithImpl(_$PaginationImpl _value, $Res Function(_$PaginationImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastVisiblePage = freezed,
    Object? hasNextPage = freezed,
    Object? currentPage = freezed,
    Object? items = freezed,
  }) {
    return _then(_$PaginationImpl(
      lastVisiblePage: freezed == lastVisiblePage
          ? _value.lastVisiblePage
          : lastVisiblePage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Items?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationImpl implements _Pagination {
  const _$PaginationImpl(
      {@JsonKey(name: "last_visible_page") this.lastVisiblePage,
      @JsonKey(name: "has_next_page") this.hasNextPage,
      @JsonKey(name: "current_page") this.currentPage,
      @JsonKey(name: "items") this.items});

  factory _$PaginationImpl.fromJson(Map<String, dynamic> json) => _$$PaginationImplFromJson(json);

  @override
  @JsonKey(name: "last_visible_page")
  final int? lastVisiblePage;
  @override
  @JsonKey(name: "has_next_page")
  final bool? hasNextPage;
  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  @override
  @JsonKey(name: "items")
  final Items? items;

  @override
  String toString() {
    return 'Pagination(lastVisiblePage: $lastVisiblePage, hasNextPage: $hasNextPage, currentPage: $currentPage, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationImpl &&
            (identical(other.lastVisiblePage, lastVisiblePage) || other.lastVisiblePage == lastVisiblePage) &&
            (identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage) &&
            (identical(other.currentPage, currentPage) || other.currentPage == currentPage) &&
            (identical(other.items, items) || other.items == items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lastVisiblePage, hasNextPage, currentPage, items);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      __$$PaginationImplCopyWithImpl<_$PaginationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationImplToJson(
      this,
    );
  }
}

abstract class _Pagination implements Pagination {
  const factory _Pagination(
      {@JsonKey(name: "last_visible_page") final int? lastVisiblePage,
      @JsonKey(name: "has_next_page") final bool? hasNextPage,
      @JsonKey(name: "current_page") final int? currentPage,
      @JsonKey(name: "items") final Items? items}) = _$PaginationImpl;

  factory _Pagination.fromJson(Map<String, dynamic> json) = _$PaginationImpl.fromJson;

  @override
  @JsonKey(name: "last_visible_page")
  int? get lastVisiblePage;
  @override
  @JsonKey(name: "has_next_page")
  bool? get hasNextPage;
  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "items")
  Items? get items;
  @override
  @JsonKey(ignore: true)
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith => throw _privateConstructorUsedError;
}
