// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kraken_anime_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KrakenAnimeCharactersResponseImpl _$$KrakenAnimeCharactersResponseImplFromJson(Map<String, dynamic> json) =>
    _$KrakenAnimeCharactersResponseImpl(
      data: (json['data'] as List<dynamic>?)?.map((e) => AnimeDetail.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$KrakenAnimeCharactersResponseImplToJson(_$KrakenAnimeCharactersResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
