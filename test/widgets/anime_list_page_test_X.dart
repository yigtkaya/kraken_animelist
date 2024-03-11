import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kraken_animelist/features/anime_list/bloc/kraken_anime_bloc.dart';
import 'package:kraken_animelist/features/anime_list/bloc/kraken_anime_state.dart';
import 'package:kraken_animelist/features/anime_list/bloc/kraken_anime_event.dart';
import 'package:kraken_animelist/features/anime_list/presentation/anime_list_page.dart';
import 'package:kraken_animelist/features/anime_list/domain/repository/anime_list_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/kraken_anime.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/kraken_anime_response.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/pagination.dart';
import 'package:kraken_animelist/features/anime_list/presentation/anime_list_item.dart';

class MockKrakenAnimeBloc extends MockBloc<KrakenAnimeEvent, KrakenAnimeState> implements KrakenAnimeBloc {}

class MockKrakenAnimeRepository extends Mock implements KrakenAnimeRepositoryImpl {}

void main() {
  late MockKrakenAnimeBloc krakenAnimeBloc;

  setUp(() {
    krakenAnimeBloc = MockKrakenAnimeBloc();
  });
  group("Body", () {
    testWidgets('Widget displays loaded state with data', (WidgetTester tester) async {
      final animeList = [
        KrakenAnime(malId: 1, title: 'Anime 1', score: 8.0, images: {}),
        KrakenAnime(malId: 2, title: 'Anime 2', score: 7.5, images: {}),
      ];
      when(() => krakenAnimeBloc.stream).thenAnswer(
          (_) => Stream.value(KrakenAnimeStateLoaded(KrakenAnimeResponse(data: animeList, pagination: Pagination()))));

      await tester.pumpWidget(
        ScreenUtilInit(
          child: MaterialApp(
            home: Scaffold(
              body: BlocProvider<KrakenAnimeBloc>.value(
                value: krakenAnimeBloc,
                child: AnimeListingPage(),
              ),
            ),
          ),
        ),
      );
      // Wait for ListView to be fully rendered
      await tester.pumpAndSettle();
      expect(find.byType(AnimeListItem), findsNWidgets(animeList.length));
    });

    testWidgets('Widget displays loading state', (WidgetTester tester) async {
      when(() => krakenAnimeBloc.state).thenReturn(KrakenAnimeStateLoading());

      await tester.pumpWidget(
        ScreenUtilInit(
          child: MaterialApp(
            home: Scaffold(
              body: BlocProvider<KrakenAnimeBloc>.value(
                value: krakenAnimeBloc,
                child: AnimeListingPage(),
              ),
            ),
          ),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
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

      // Act
      await tester.pumpAndSettle();

      // Assert
      expect(find.text("Kraken Anime"), findsOneWidget);
      expect(find.byType(AppBar), findsOneWidget);
    });
  });
}
