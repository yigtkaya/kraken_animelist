// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropImpl _$$PropImplFromJson(Map<String, dynamic> json) => _$PropImpl(
      from: json['from'] == null ? null : From.fromJson(json['from'] as Map<String, dynamic>),
      to: json['to'] == null ? null : From.fromJson(json['to'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PropImplToJson(_$PropImpl instance) => <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
    };
