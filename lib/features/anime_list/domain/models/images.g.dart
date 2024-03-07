// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImagesImpl _$$ImagesImplFromJson(Map<String, dynamic> json) => _$ImagesImpl(
      imageUrl: json['image_url'] as String?,
      smallImageUrl: json['small_image_url'] as String?,
      mediumImageUrl: json['medium_image_url'] as String?,
      largeImageUrl: json['large_image_url'] as String?,
      maximumImageUrl: json['maximum_image_url'] as String?,
    );

Map<String, dynamic> _$$ImagesImplToJson(_$ImagesImpl instance) => <String, dynamic>{
      'image_url': instance.imageUrl,
      'small_image_url': instance.smallImageUrl,
      'medium_image_url': instance.mediumImageUrl,
      'large_image_url': instance.largeImageUrl,
      'maximum_image_url': instance.maximumImageUrl,
    };
