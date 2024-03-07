// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kraken_anime_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KrakenAnimeDetailResponseImpl _$$KrakenAnimeDetailResponseImplFromJson(Map<String, dynamic> json) =>
    _$KrakenAnimeDetailResponseImpl(
      data: (json['data'] as List<dynamic>?)?.map((e) => AnimeDetail.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$KrakenAnimeDetailResponseImplToJson(_$KrakenAnimeDetailResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
