// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'title.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Title _$TitleFromJson(Map<String, dynamic> json) {
  return _Title.fromJson(json);
}

/// @nodoc
mixin _$Title {
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TitleCopyWith<Title> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitleCopyWith<$Res> {
  factory $TitleCopyWith(Title value, $Res Function(Title) then) = _$TitleCopyWithImpl<$Res, Title>;
  @useResult
  $Res call({@JsonKey(name: "type") String? type, @JsonKey(name: "title") String? title});
}

/// @nodoc
class _$TitleCopyWithImpl<$Res, $Val extends Title> implements $TitleCopyWith<$Res> {
  _$TitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TitleImplCopyWith<$Res> implements $TitleCopyWith<$Res> {
  factory _$$TitleImplCopyWith(_$TitleImpl value, $Res Function(_$TitleImpl) then) = __$$TitleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "type") String? type, @JsonKey(name: "title") String? title});
}

/// @nodoc
class __$$TitleImplCopyWithImpl<$Res> extends _$TitleCopyWithImpl<$Res, _$TitleImpl>
    implements _$$TitleImplCopyWith<$Res> {
  __$$TitleImplCopyWithImpl(_$TitleImpl _value, $Res Function(_$TitleImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? title = freezed,
  }) {
    return _then(_$TitleImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TitleImpl implements _Title {
  const _$TitleImpl({@JsonKey(name: "type") this.type, @JsonKey(name: "title") this.title});

  factory _$TitleImpl.fromJson(Map<String, dynamic> json) => _$$TitleImplFromJson(json);

  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "title")
  final String? title;

  @override
  String toString() {
    return 'Title(type: $type, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleImplCopyWith<_$TitleImpl> get copyWith => __$$TitleImplCopyWithImpl<_$TitleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TitleImplToJson(
      this,
    );
  }
}

abstract class _Title implements Title {
  const factory _Title({@JsonKey(name: "type") final String? type, @JsonKey(name: "title") final String? title}) =
      _$TitleImpl;

  factory _Title.fromJson(Map<String, dynamic> json) = _$TitleImpl.fromJson;

  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$TitleImplCopyWith<_$TitleImpl> get copyWith => throw _privateConstructorUsedError;
}
