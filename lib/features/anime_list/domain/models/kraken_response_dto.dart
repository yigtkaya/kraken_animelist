import 'dart:convert';

import 'package:kraken_animelist/features/anime_list/domain/models/kraken_anime.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/pagination.dart';

KrakendResponseDto rawdataFromJson(String str) => KrakendResponseDto.fromJson(json.decode(str));

class KrakendResponseDto {
  KrakendResponseDto({
    required this.krakenAnimeList,
    required this.pagination,
  });
  final List<KrakenAnime> krakenAnimeList;
  final Pagination pagination;

  factory KrakendResponseDto.fromJson(Map<String, dynamic> json) => KrakendResponseDto(
        krakenAnimeList: List<KrakenAnime>.from(json["data"].map((x) => KrakenAnime.fromJson(x))),
        pagination: Pagination.fromJson(json["pagination"]),
      );
}
