import 'package:kraken_animelist/core/services/native_method_service.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/kraken_anime_response.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/kraken_response_dto.dart';
import 'package:kraken_animelist/features/anime_list/data/repository/anime_list_repository.dart';

class KrakenAnimeRepositoryImpl extends KrakenAnimeRepository {
  KrakenAnimeRepositoryImpl();

  @override
  Future<KrakenAnimeResponse> getAnimeList(int page) async {
    final response = await NativeMethods.fetchAnimeList(page);
    final dto = rawdataFromJson(response);

    return KrakenAnimeResponse(
      pagination: dto.pagination,
      data: dto.krakenAnimeList,
    );
  }
}
