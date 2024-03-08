import 'dart:convert';
import 'package:kraken_animelist/features/anime_detail/domain/models/anime_detail.dart';
import 'package:kraken_animelist/features/anime_detail/domain/models/kraken_anime_detail_response.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/kraken_anime.dart';

KrakenAnimeCharactersResponse rawdataFromJson(String str) => KrakenAnimeCharactersResponse.fromJson(json.decode(str));

class KrakenAnimeCharactersResponseDto {
  KrakenAnimeCharactersResponseDto({
    required this.krakenAnimeList,
  });
  final List<AnimeDetail> krakenAnimeList;

  factory KrakenAnimeCharactersResponseDto.fromJson(Map<String, dynamic> json) => KrakenAnimeCharactersResponseDto(
        krakenAnimeList: List<AnimeDetail>.from(json["data"].map((x) => KrakenAnime.fromJson(x))),
      );
}
