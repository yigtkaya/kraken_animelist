import 'package:kraken_animelist/features/anime_list/domain/models/kraken_anime_response.dart';
import 'package:kraken_animelist/features/anime_list/domain/repository/anime_list_repository.dart';

class KrakenAnimeRepositoryImpl extends KrakenAnimeRepository {
  KrakenAnimeRepositoryImpl();

  @override
  Future<KrakenAnimeResponse> getAnimeList() async {
    throw UnimplementedError();
  }
}
