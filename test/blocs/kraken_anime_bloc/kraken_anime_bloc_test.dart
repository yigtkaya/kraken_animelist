import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:kraken_animelist/features/anime_list/bloc/kraken_anime_bloc.dart';
import 'package:kraken_animelist/features/anime_list/bloc/kraken_anime_event.dart';
import 'package:kraken_animelist/features/anime_list/bloc/kraken_anime_state.dart';
import 'package:kraken_animelist/features/anime_list/domain/repository/anime_list_repository_impl.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/kraken_anime_response.dart';

class MockKrakenAnimeRepository extends Mock implements KrakenAnimeRepositoryImpl {}

class MockKrakenAnimeBloc extends MockBloc<KrakenAnimeEvent, KrakenAnimeState> implements KrakenAnimeBloc {}

void main() {
  group("KrakenAnimeBloc", () {
    late KrakenAnimeBloc krakenAnimeBloc;
    late MockKrakenAnimeRepository krakenAnimeRepository;

    setUp(() {
      krakenAnimeRepository = MockKrakenAnimeRepository();
      krakenAnimeBloc = KrakenAnimeBloc(krakenAnimeRepository);
    });
    test('initial state is CharactersStateLoading', () {
      expect(krakenAnimeBloc.state, const KrakenAnimeStateLoading());
    });

    blocTest<KrakenAnimeBloc, KrakenAnimeState>(
      'emits [KrakenAnimeStateLoaded] when AppStartEvent is added',
      build: () => krakenAnimeBloc,
      setUp: () => when(() => krakenAnimeRepository.getAnimeList(1)).thenAnswer((_) async => KrakenAnimeResponse()),
      act: (bloc) => bloc.add(const AppStartEvent()),
      expect: () => [isA<KrakenAnimeStateLoaded>()],
    );

    blocTest<KrakenAnimeBloc, KrakenAnimeState>(
      'emits [KrakenAnimeStateLoaded] when PullToRefreshEvent is added',
      build: () {
        when(() => krakenAnimeRepository.getAnimeList(1)).thenAnswer((_) async => KrakenAnimeResponse());
        return KrakenAnimeBloc(krakenAnimeRepository);
      },
      act: (bloc) => bloc.add(const PullToRefreshEvent()),
      expect: () => [isA<KrakenAnimeStateLoaded>()],
    );
  });
}
