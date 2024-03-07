// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonImpl _$$PersonImplFromJson(Map<String, dynamic> json) => _$PersonImpl(
      malId: json['mal_id'] as int?,
      url: json['url'] as String?,
      images: json['images'] == null ? null : PersonImages.fromJson(json['images'] as Map<String, dynamic>),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$PersonImplToJson(_$PersonImpl instance) => <String, dynamic>{
      'mal_id': instance.malId,
      'url': instance.url,
      'images': instance.images,
      'name': instance.name,
    };
