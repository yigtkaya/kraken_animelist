import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/kraken_anime.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/pagination.dart';

part 'kraken_anime_response.freezed.dart';
part 'kraken_anime_response.g.dart';

@freezed
class KrakenAnimeResponse with _$KrakenAnimeResponse {
  const factory KrakenAnimeResponse({
    @JsonKey(name: "pagination") Pagination? pagination,
    @JsonKey(name: "data") List<KrakenAnime>? data,
  }) = _KrakenAnimeResponse;

  factory KrakenAnimeResponse.fromJson(Map<String, dynamic> json) => _$KrakenAnimeResponseFromJson(json);
}
