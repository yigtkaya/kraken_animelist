// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kraken_anime_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KrakenAnimeDetailResponse _$KrakenAnimeDetailResponseFromJson(Map<String, dynamic> json) {
  return _KrakenAnimeDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$KrakenAnimeDetailResponse {
  @JsonKey(name: "data")
  List<AnimeDetail>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KrakenAnimeDetailResponseCopyWith<KrakenAnimeDetailResponse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KrakenAnimeDetailResponseCopyWith<$Res> {
  factory $KrakenAnimeDetailResponseCopyWith(
          KrakenAnimeDetailResponse value, $Res Function(KrakenAnimeDetailResponse) then) =
      _$KrakenAnimeDetailResponseCopyWithImpl<$Res, KrakenAnimeDetailResponse>;
  @useResult
  $Res call({@JsonKey(name: "data") List<AnimeDetail>? data});
}

/// @nodoc
class _$KrakenAnimeDetailResponseCopyWithImpl<$Res, $Val extends KrakenAnimeDetailResponse>
    implements $KrakenAnimeDetailResponseCopyWith<$Res> {
  _$KrakenAnimeDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AnimeDetail>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KrakenAnimeDetailResponseImplCopyWith<$Res> implements $KrakenAnimeDetailResponseCopyWith<$Res> {
  factory _$$KrakenAnimeDetailResponseImplCopyWith(
          _$KrakenAnimeDetailResponseImpl value, $Res Function(_$KrakenAnimeDetailResponseImpl) then) =
      __$$KrakenAnimeDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") List<AnimeDetail>? data});
}

/// @nodoc
class __$$KrakenAnimeDetailResponseImplCopyWithImpl<$Res>
    extends _$KrakenAnimeDetailResponseCopyWithImpl<$Res, _$KrakenAnimeDetailResponseImpl>
    implements _$$KrakenAnimeDetailResponseImplCopyWith<$Res> {
  __$$KrakenAnimeDetailResponseImplCopyWithImpl(
      _$KrakenAnimeDetailResponseImpl _value, $Res Function(_$KrakenAnimeDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$KrakenAnimeDetailResponseImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AnimeDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KrakenAnimeDetailResponseImpl implements _KrakenAnimeDetailResponse {
  const _$KrakenAnimeDetailResponseImpl({@JsonKey(name: "data") final List<AnimeDetail>? data}) : _data = data;

  factory _$KrakenAnimeDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$KrakenAnimeDetailResponseImplFromJson(json);

  final List<AnimeDetail>? _data;
  @override
  @JsonKey(name: "data")
  List<AnimeDetail>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'KrakenAnimeDetailResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KrakenAnimeDetailResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KrakenAnimeDetailResponseImplCopyWith<_$KrakenAnimeDetailResponseImpl> get copyWith =>
      __$$KrakenAnimeDetailResponseImplCopyWithImpl<_$KrakenAnimeDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KrakenAnimeDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _KrakenAnimeDetailResponse implements KrakenAnimeDetailResponse {
  const factory _KrakenAnimeDetailResponse({@JsonKey(name: "data") final List<AnimeDetail>? data}) =
      _$KrakenAnimeDetailResponseImpl;

  factory _KrakenAnimeDetailResponse.fromJson(Map<String, dynamic> json) = _$KrakenAnimeDetailResponseImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<AnimeDetail>? get data;
  @override
  @JsonKey(ignore: true)
  _$$KrakenAnimeDetailResponseImplCopyWith<_$KrakenAnimeDetailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
