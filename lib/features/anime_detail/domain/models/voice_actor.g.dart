// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voice_actor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VoiceActorImpl _$$VoiceActorImplFromJson(Map<String, dynamic> json) => _$VoiceActorImpl(
      person: json['person'] == null ? null : Person.fromJson(json['person'] as Map<String, dynamic>),
      language: json['language'] as String?,
    );

Map<String, dynamic> _$$VoiceActorImplToJson(_$VoiceActorImpl instance) => <String, dynamic>{
      'person': instance.person,
      'language': instance.language,
    };
