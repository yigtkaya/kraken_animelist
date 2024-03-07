// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimeDetailImpl _$$AnimeDetailImplFromJson(Map<String, dynamic> json) => _$AnimeDetailImpl(
      character: json['character'] == null ? null : Character.fromJson(json['character'] as Map<String, dynamic>),
      role: json['role'] as String?,
      favorites: json['favorites'] as int?,
      voiceActors:
          (json['voice_actors'] as List<dynamic>?)?.map((e) => VoiceActor.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$AnimeDetailImplToJson(_$AnimeDetailImpl instance) => <String, dynamic>{
      'character': instance.character,
      'role': instance.role,
      'favorites': instance.favorites,
      'voice_actors': instance.voiceActors,
    };
