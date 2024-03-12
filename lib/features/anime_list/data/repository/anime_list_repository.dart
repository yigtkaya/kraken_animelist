import 'package:kraken_animelist/features/anime_list/domain/models/kraken_anime_response.dart';

abstract class KrakenAnimeRepository {
  Future<KrakenAnimeResponse> getAnimeList(int page);
}
