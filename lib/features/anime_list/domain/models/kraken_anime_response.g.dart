// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kraken_anime_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KrakenAnimeResponseImpl _$$KrakenAnimeResponseImplFromJson(Map<String, dynamic> json) => _$KrakenAnimeResponseImpl(
      pagination: json['pagination'] == null ? null : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)?.map((e) => KrakenAnime.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$KrakenAnimeResponseImplToJson(_$KrakenAnimeResponseImpl instance) => <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
    };
