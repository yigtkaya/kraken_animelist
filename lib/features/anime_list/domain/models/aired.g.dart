// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aired.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AiredImpl _$$AiredImplFromJson(Map<String, dynamic> json) => _$AiredImpl(
      from: json['from'] == null ? null : DateTime.parse(json['from'] as String),
      to: json['to'] == null ? null : DateTime.parse(json['to'] as String),
      prop: json['prop'] == null ? null : Prop.fromJson(json['prop'] as Map<String, dynamic>),
      string: json['string'] as String?,
    );

Map<String, dynamic> _$$AiredImplToJson(_$AiredImpl instance) => <String, dynamic>{
      'from': instance.from?.toIso8601String(),
      'to': instance.to?.toIso8601String(),
      'prop': instance.prop,
      'string': instance.string,
    };
