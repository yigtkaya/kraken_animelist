import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken_animelist/features/anime_detail/domain/models/anime_detail.dart';

part 'kraken_anime_detail_response.freezed.dart';
part 'kraken_anime_detail_response.g.dart';

@freezed
class KrakenAnimeCharactersResponse with _$KrakenAnimeCharactersResponse {
  const factory KrakenAnimeCharactersResponse({
    @JsonKey(name: "data") List<AnimeDetail>? data,
  }) = _KrakenAnimeCharactersResponse;

  factory KrakenAnimeCharactersResponse.fromJson(Map<String, dynamic> json) =>
      _$KrakenAnimeCharactersResponseFromJson(json);
}
