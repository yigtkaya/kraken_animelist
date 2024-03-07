// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterImagesImpl _$$CharacterImagesImplFromJson(Map<String, dynamic> json) => _$CharacterImagesImpl(
      jpg: json['jpg'] == null ? null : Jpg.fromJson(json['jpg'] as Map<String, dynamic>),
      webp: json['webp'] == null ? null : Webp.fromJson(json['webp'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CharacterImagesImplToJson(_$CharacterImagesImpl instance) => <String, dynamic>{
      'jpg': instance.jpg,
      'webp': instance.webp,
    };
