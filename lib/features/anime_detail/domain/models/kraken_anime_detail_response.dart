import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken_animelist/features/anime_detail/domain/models/anime_detail.dart';

part 'kraken_anime_detail_response.freezed.dart';
part 'kraken_anime_detail_response.g.dart';

@freezed
class KrakenAnimeDetailResponse with _$KrakenAnimeDetailResponse {
  const factory KrakenAnimeDetailResponse({
    @JsonKey(name: "data") List<AnimeDetail>? data,
  }) = _KrakenAnimeDetailResponse;

  factory KrakenAnimeDetailResponse.fromJson(Map<String, dynamic> json) => _$KrakenAnimeDetailResponseFromJson(json);
}
