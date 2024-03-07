// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'broadcast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Broadcast _$BroadcastFromJson(Map<String, dynamic> json) {
  return _Broadcast.fromJson(json);
}

/// @nodoc
mixin _$Broadcast {
  @JsonKey(name: "day")
  String? get day => throw _privateConstructorUsedError;
  @JsonKey(name: "time")
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: "timezone")
  String? get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: "string")
  String? get string => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BroadcastCopyWith<Broadcast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcastCopyWith<$Res> {
  factory $BroadcastCopyWith(Broadcast value, $Res Function(Broadcast) then) = _$BroadcastCopyWithImpl<$Res, Broadcast>;
  @useResult
  $Res call(
      {@JsonKey(name: "day") String? day,
      @JsonKey(name: "time") String? time,
      @JsonKey(name: "timezone") String? timezone,
      @JsonKey(name: "string") String? string});
}

/// @nodoc
class _$BroadcastCopyWithImpl<$Res, $Val extends Broadcast> implements $BroadcastCopyWith<$Res> {
  _$BroadcastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? time = freezed,
    Object? timezone = freezed,
    Object? string = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      string: freezed == string
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BroadcastImplCopyWith<$Res> implements $BroadcastCopyWith<$Res> {
  factory _$$BroadcastImplCopyWith(_$BroadcastImpl value, $Res Function(_$BroadcastImpl) then) =
      __$$BroadcastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "day") String? day,
      @JsonKey(name: "time") String? time,
      @JsonKey(name: "timezone") String? timezone,
      @JsonKey(name: "string") String? string});
}

/// @nodoc
class __$$BroadcastImplCopyWithImpl<$Res> extends _$BroadcastCopyWithImpl<$Res, _$BroadcastImpl>
    implements _$$BroadcastImplCopyWith<$Res> {
  __$$BroadcastImplCopyWithImpl(_$BroadcastImpl _value, $Res Function(_$BroadcastImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? time = freezed,
    Object? timezone = freezed,
    Object? string = freezed,
  }) {
    return _then(_$BroadcastImpl(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      string: freezed == string
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BroadcastImpl implements _Broadcast {
  const _$BroadcastImpl(
      {@JsonKey(name: "day") this.day,
      @JsonKey(name: "time") this.time,
      @JsonKey(name: "timezone") this.timezone,
      @JsonKey(name: "string") this.string});

  factory _$BroadcastImpl.fromJson(Map<String, dynamic> json) => _$$BroadcastImplFromJson(json);

  @override
  @JsonKey(name: "day")
  final String? day;
  @override
  @JsonKey(name: "time")
  final String? time;
  @override
  @JsonKey(name: "timezone")
  final String? timezone;
  @override
  @JsonKey(name: "string")
  final String? string;

  @override
  String toString() {
    return 'Broadcast(day: $day, time: $time, timezone: $timezone, string: $string)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BroadcastImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.timezone, timezone) || other.timezone == timezone) &&
            (identical(other.string, string) || other.string == string));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, time, timezone, string);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BroadcastImplCopyWith<_$BroadcastImpl> get copyWith =>
      __$$BroadcastImplCopyWithImpl<_$BroadcastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BroadcastImplToJson(
      this,
    );
  }
}

abstract class _Broadcast implements Broadcast {
  const factory _Broadcast(
      {@JsonKey(name: "day") final String? day,
      @JsonKey(name: "time") final String? time,
      @JsonKey(name: "timezone") final String? timezone,
      @JsonKey(name: "string") final String? string}) = _$BroadcastImpl;

  factory _Broadcast.fromJson(Map<String, dynamic> json) = _$BroadcastImpl.fromJson;

  @override
  @JsonKey(name: "day")
  String? get day;
  @override
  @JsonKey(name: "time")
  String? get time;
  @override
  @JsonKey(name: "timezone")
  String? get timezone;
  @override
  @JsonKey(name: "string")
  String? get string;
  @override
  @JsonKey(ignore: true)
  _$$BroadcastImplCopyWith<_$BroadcastImpl> get copyWith => throw _privateConstructorUsedError;
}
