import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:kraken_animelist/features/anime_detail/presentation/anime_detail_page.dart';
import 'package:kraken_animelist/features/anime_detail/bloc/characters_bloc.dart';
import 'package:kraken_animelist/features/anime_detail/bloc/characters_event.dart';
import 'package:kraken_animelist/features/anime_detail/bloc/characters_state.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/kraken_anime.dart';
import 'package:kraken_animelist/features/anime_detail/domain/models/kraken_anime_detail_response.dart';
import 'package:kraken_animelist/features/anime_detail/domain/models/anime_detail.dart';
import 'package:kraken_animelist/features/anime_detail/domain/models/character.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Mocking CharactersBloc
class MockCharactersBloc extends MockBloc<CharactersEvent, CharactersState> implements CharactersBloc {}

void main() {
  late MockCharactersBloc charactersBloc;

  setUp(() {
    charactersBloc = MockCharactersBloc();
  });
  group("AppBar", () {
    testWidgets("should display the title", (WidgetTester tester) async {
      // Arrange
      await tester.pumpWidget(ScreenUtilInit(
        child: MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color(0xFF2C386B),
              title: Text(
                'Kraken Anime',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
            ),
          ),
        ),
      ));
      // Assert
      expect(find.text("Kraken Anime"), findsOneWidget);
      expect(find.byType(AppBar), findsOneWidget);
    });
  });

  testWidgets('Widget displays loading state', (WidgetTester tester) async {
    when(() => charactersBloc.state).thenReturn(const CharactersStateLoading());

    await tester.pumpWidget(
      ScreenUtilInit(
        child: MaterialApp(
          home: Scaffold(
            body: BlocProvider<CharactersBloc>.value(
              value: charactersBloc,
              child: AnimeDetailPage(
                krakenAnime: KrakenAnime(
                  malId: 1,
                  title: 'Test Anime',
                  score: 8.0,
                  synopsis: 'Test synopsis',
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('Widget displays loaded state with data', (WidgetTester tester) async {
    final characters = KrakenAnimeCharactersResponse(
      data: [
        AnimeDetail(
          character: Character(
            malId: 1,
            name: 'Character 1',
          ),
        ),
      ],
    );
    when(() => charactersBloc.state).thenReturn(CharactersStateLoaded(characters));

    await tester.pumpWidget(ScreenUtilInit(
      child: MaterialApp(
        home: Scaffold(
          body: BlocProvider<CharactersBloc>.value(
            value: charactersBloc,
            child: AnimeDetailPage(
              krakenAnime: KrakenAnime(
                malId: 1,
                title: 'Test Anime',
                score: 8.0,
                synopsis: 'Test synopsis',
              ),
            ),
          ),
        ),
      ),
    ));
    await tester.pumpAndSettle();

    expect(find.byType(GridView), findsOneWidget);
    expect(find.text('Character 1'), findsOneWidget);
    // Add more assertions for character data
  });

  testWidgets('AnimeDetailPage UI Test', (WidgetTester tester) async {
    // Create a KrakenAnime instance for testing
    final krakenAnime = KrakenAnime(
      malId: 1,
      title: 'Test Anime',
      score: 8.0,
      type: 'TV',
      episodes: 12,
      genres: [Demographic(name: 'Action'), Demographic(name: 'Adventure')],
      rank: 1,
      synopsis: 'Test synopsis',
      images: {'jpg': MImage.Image(largeImageUrl: 'test_image_url')},
    );

    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: AnimeDetailPage(krakenAnime: krakenAnime),
    ));

    // Verify that the title is displayed
    expect(find.text('Test Anime'), findsOneWidget);

    // Verify that the score is displayed
    expect(find.text('8.0 ⭐️'), findsOneWidget);

    // Verify that the information section is displayed
    expect(find.text('Type: TV'), findsOneWidget);
    expect(find.text('Episodes: 12'), findsOneWidget);
    expect(find.text('Genres: Action,Adventure'), findsOneWidget);
    expect(find.text('Ranked: #1'), findsOneWidget);

    // Verify that the synopsis section is displayed
    expect(find.text('Synopsis'), findsOneWidget);
    expect(find.text('Test synopsis'), findsOneWidget);

    // Verify that the characters section is displayed
    expect(find.text('Characters'), findsOneWidget);
  });
}
