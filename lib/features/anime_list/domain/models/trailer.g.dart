// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trailer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrailerImpl _$$TrailerImplFromJson(Map<String, dynamic> json) => _$TrailerImpl(
      youtubeId: json['youtube_id'] as String?,
      url: json['url'] as String?,
      embedUrl: json['embed_url'] as String?,
      images: json['images'] == null ? null : Images.fromJson(json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TrailerImplToJson(_$TrailerImpl instance) => <String, dynamic>{
      'youtube_id': instance.youtubeId,
      'url': instance.url,
      'embed_url': instance.embedUrl,
      'images': instance.images,
    };
