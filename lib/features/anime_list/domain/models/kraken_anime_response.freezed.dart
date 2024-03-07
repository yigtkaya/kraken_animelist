// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kraken_anime_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KrakenAnimeResponse _$KrakenAnimeResponseFromJson(Map<String, dynamic> json) {
  return _KrakenAnimeResponse.fromJson(json);
}

/// @nodoc
mixin _$KrakenAnimeResponse {
  @JsonKey(name: "pagination")
  Pagination? get pagination => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<KrakenAnime>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KrakenAnimeResponseCopyWith<KrakenAnimeResponse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KrakenAnimeResponseCopyWith<$Res> {
  factory $KrakenAnimeResponseCopyWith(KrakenAnimeResponse value, $Res Function(KrakenAnimeResponse) then) =
      _$KrakenAnimeResponseCopyWithImpl<$Res, KrakenAnimeResponse>;
  @useResult
  $Res call({@JsonKey(name: "pagination") Pagination? pagination, @JsonKey(name: "data") List<KrakenAnime>? data});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$KrakenAnimeResponseCopyWithImpl<$Res, $Val extends KrakenAnimeResponse>
    implements $KrakenAnimeResponseCopyWith<$Res> {
  _$KrakenAnimeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<KrakenAnime>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KrakenAnimeResponseImplCopyWith<$Res> implements $KrakenAnimeResponseCopyWith<$Res> {
  factory _$$KrakenAnimeResponseImplCopyWith(
          _$KrakenAnimeResponseImpl value, $Res Function(_$KrakenAnimeResponseImpl) then) =
      __$$KrakenAnimeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "pagination") Pagination? pagination, @JsonKey(name: "data") List<KrakenAnime>? data});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$KrakenAnimeResponseImplCopyWithImpl<$Res>
    extends _$KrakenAnimeResponseCopyWithImpl<$Res, _$KrakenAnimeResponseImpl>
    implements _$$KrakenAnimeResponseImplCopyWith<$Res> {
  __$$KrakenAnimeResponseImplCopyWithImpl(
      _$KrakenAnimeResponseImpl _value, $Res Function(_$KrakenAnimeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = freezed,
    Object? data = freezed,
  }) {
    return _then(_$KrakenAnimeResponseImpl(
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<KrakenAnime>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KrakenAnimeResponseImpl implements _KrakenAnimeResponse {
  const _$KrakenAnimeResponseImpl(
      {@JsonKey(name: "pagination") this.pagination, @JsonKey(name: "data") final List<KrakenAnime>? data})
      : _data = data;

  factory _$KrakenAnimeResponseImpl.fromJson(Map<String, dynamic> json) => _$$KrakenAnimeResponseImplFromJson(json);

  @override
  @JsonKey(name: "pagination")
  final Pagination? pagination;
  final List<KrakenAnime>? _data;
  @override
  @JsonKey(name: "data")
  List<KrakenAnime>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'KrakenAnimeResponse(pagination: $pagination, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KrakenAnimeResponseImpl &&
            (identical(other.pagination, pagination) || other.pagination == pagination) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pagination, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KrakenAnimeResponseImplCopyWith<_$KrakenAnimeResponseImpl> get copyWith =>
      __$$KrakenAnimeResponseImplCopyWithImpl<_$KrakenAnimeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KrakenAnimeResponseImplToJson(
      this,
    );
  }
}

abstract class _KrakenAnimeResponse implements KrakenAnimeResponse {
  const factory _KrakenAnimeResponse(
      {@JsonKey(name: "pagination") final Pagination? pagination,
      @JsonKey(name: "data") final List<KrakenAnime>? data}) = _$KrakenAnimeResponseImpl;

  factory _KrakenAnimeResponse.fromJson(Map<String, dynamic> json) = _$KrakenAnimeResponseImpl.fromJson;

  @override
  @JsonKey(name: "pagination")
  Pagination? get pagination;
  @override
  @JsonKey(name: "data")
  List<KrakenAnime>? get data;
  @override
  @JsonKey(ignore: true)
  _$$KrakenAnimeResponseImplCopyWith<_$KrakenAnimeResponseImpl> get copyWith => throw _privateConstructorUsedError;
}
