import 'package:kraken_animelist/features/anime_detail/domain/models/kraken_anime_detail_response.dart';

abstract class CharactersRepository {
  Future<KrakenAnimeCharactersResponse> getCharacters(int id);
}
