import 'package:kraken_animelist/core/services/native_method_service.dart';
import 'package:kraken_animelist/features/anime_detail/domain/models/kraken_anime_characters_dto.dart';
import 'package:kraken_animelist/features/anime_detail/domain/models/kraken_anime_detail_response.dart';
import 'package:kraken_animelist/features/anime_detail/domain/repository/chracters_repository.dart';

class CharactersRepositoryImpl extends CharactersRepository {
  @override
  Future<KrakenAnimeCharactersResponse> getCharacters(int id) async {
    final response = await NativeMethods.fetchCharacterList(id);
    final dto = rawdataFromJson(response);

    return KrakenAnimeCharactersResponse(
      data: dto.data,
    );
  }
}
