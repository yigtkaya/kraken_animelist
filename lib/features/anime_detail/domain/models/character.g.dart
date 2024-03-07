// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterImpl _$$CharacterImplFromJson(Map<String, dynamic> json) => _$CharacterImpl(
      malId: json['mal_id'] as int?,
      url: json['url'] as String?,
      images: json['images'] == null ? null : CharacterImages.fromJson(json['images'] as Map<String, dynamic>),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$CharacterImplToJson(_$CharacterImpl instance) => <String, dynamic>{
      'mal_id': instance.malId,
      'url': instance.url,
      'images': instance.images,
      'name': instance.name,
    };
