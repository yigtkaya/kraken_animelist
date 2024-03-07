import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/aired.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/broadcast.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/demographic.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/image.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/title.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/trailer.dart';

part 'kraken_anime.freezed.dart';
part 'kraken_anime.g.dart';

@freezed
class KrakenAnime with _$KrakenAnime {
  const factory KrakenAnime({
    @JsonKey(name: "mal_id") int? malId,
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "images") Map<String, Image>? images,
    @JsonKey(name: "trailer") Trailer? trailer,
    @JsonKey(name: "approved") bool? approved,
    @JsonKey(name: "titles") List<Title>? titles,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "title_english") String? titleEnglish,
    @JsonKey(name: "title_japanese") String? titleJapanese,
    @JsonKey(name: "title_synonyms") List<String>? titleSynonyms,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "source") String? source,
    @JsonKey(name: "episodes") int? episodes,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "airing") bool? airing,
    @JsonKey(name: "aired") Aired? aired,
    @JsonKey(name: "duration") String? duration,
    @JsonKey(name: "rating") String? rating,
    @JsonKey(name: "score") double? score,
    @JsonKey(name: "scored_by") int? scoredBy,
    @JsonKey(name: "rank") int? rank,
    @JsonKey(name: "popularity") int? popularity,
    @JsonKey(name: "members") int? members,
    @JsonKey(name: "favorites") int? favorites,
    @JsonKey(name: "synopsis") String? synopsis,
    @JsonKey(name: "background") String? background,
    @JsonKey(name: "season") String? season,
    @JsonKey(name: "year") int? year,
    @JsonKey(name: "broadcast") Broadcast? broadcast,
    @JsonKey(name: "producers") List<Demographic>? producers,
    @JsonKey(name: "licensors") List<dynamic>? licensors,
    @JsonKey(name: "studios") List<Demographic>? studios,
    @JsonKey(name: "genres") List<Demographic>? genres,
    @JsonKey(name: "explicit_genres") List<dynamic>? explicitGenres,
    @JsonKey(name: "themes") List<dynamic>? themes,
    @JsonKey(name: "demographics") List<Demographic>? demographics,
  }) = _KrakenAnime;

  factory KrakenAnime.fromJson(Map<String, dynamic> json) => _$KrakenAnimeFromJson(json);
}
