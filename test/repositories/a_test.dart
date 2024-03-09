import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/kraken_anime_response.dart';
import 'package:kraken_animelist/features/anime_list/domain/repository/anime_list_repository_impl.dart';

class MockKrakenAnimeRepository extends Mock implements KrakenAnimeRepositoryImpl {}

void main() {
  group('KrakenAnimeRepository', () {
    late KrakenAnimeRepositoryImpl mockRepository;

    setUp(() {
      mockRepository = MockKrakenAnimeRepository();
    });

    test('getAnimeList is called with correct arguments', () async {
      // Arrange
      final page = 1;
      final expectedResponse = KrakenAnimeResponse();

      // Stub the getAnimeList method to return the expected response
      when(() => mockRepository.getAnimeList(page)).thenAnswer((_) async => expectedResponse);

      // Act
      final result = await mockRepository.getAnimeList(page);

      // Assert
      expect(result, equals(expectedResponse));
      verify(() => mockRepository.getAnimeList(page)).called(1);
    });
  });
}
