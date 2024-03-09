import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kraken_animelist/features/anime_detail/bloc/characters_bloc.dart';
import 'package:kraken_animelist/features/anime_detail/bloc/characters_event.dart';
import 'package:kraken_animelist/features/anime_detail/bloc/characters_state.dart';
import 'package:kraken_animelist/features/anime_detail/domain/repository/characters_repository_impl.dart';
import 'package:kraken_animelist/features/anime_detail/domain/models/kraken_anime_detail_response.dart';
import 'package:mocktail/mocktail.dart';

class MockCharactersRepositoryImpl extends Mock implements CharactersRepositoryImpl {}

class MockCharacterBloc extends MockBloc<CharactersEvent, CharactersState> implements CharactersBloc {}

void main() {
  group('CharactersBloc', () {
    late CharactersBloc charactersBloc;
    late MockCharactersRepositoryImpl charactersRepositoryImpl;

    setUp(() {
      charactersRepositoryImpl = MockCharactersRepositoryImpl();
      charactersBloc = CharactersBloc(charactersRepositoryImpl);
    });

    test('initial state is CharactersStateLoading', () {
      expect(charactersBloc.state, const CharactersStateLoading());
    });
    blocTest<CharactersBloc, CharactersState>(
      'emits [CharactersStateLoaded] when OpenPageEvent is added',
      build: () => charactersBloc,
      setUp: () {
        when(() => charactersRepositoryImpl.getCharacters(17))
            .thenAnswer((_) async => KrakenAnimeCharactersResponse(data: []));
      },
      act: (bloc) => bloc.add(OpenPageEvent(17)),
      expect: () => [isA<CharactersStateLoaded>()],
    );

    blocTest<CharactersBloc, CharactersState>(
      'emits [CharactersStateError] when repository throws an error',
      build: () => charactersBloc,
      setUp: () {
        when(() => charactersRepositoryImpl.getCharacters(123123)).thenThrow(Exception('error'));
      },
      act: (bloc) => bloc.add(OpenPageEvent(123123)),
      expect: () => [const CharactersStateError("Something went wrong, please try again later.")],
    );
  });
}
