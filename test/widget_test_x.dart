import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:kraken_animelist/features/anime_list/bloc/kraken_anime_bloc.dart';
import 'package:kraken_animelist/features/anime_list/presentation/anime_listing_page.dart';

class MockKrakenAnimeBloc extends Mock implements KrakenAnimeBloc {}

void main() {
  group('AnimeListingPage', () {
    late KrakenAnimeBloc krakenAnimeBloc;

    setUp(() {
      krakenAnimeBloc = MockKrakenAnimeBloc();
    });

    testWidgets('should display loading indicator when state is loading', (WidgetTester tester) async {
      when(krakenAnimeBloc.state).thenAnswer((_) => KrakenAnimeStateLoading());

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<KrakenAnimeBloc>(
            create: (_) => krakenAnimeBloc,
            child: AnimeListingPage(),
          ),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('should display error message when state is error', (WidgetTester tester) async {
      when(krakenAnimeBloc.state).thenAnswer((_) => KrakenAnimeStateError('Error'));

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<KrakenAnimeBloc>(
            create: (_) => krakenAnimeBloc,
            child: AnimeListingPage(),
          ),
        ),
      );

      expect(find.text('Error'), findsOneWidget);
    });

    testWidgets('should display anime list when state is loaded', (WidgetTester tester) async {
      when(krakenAnimeBloc.state).thenAnswer((_) => KrakenAnimeStateLoaded(KrakenAnimeResponse()));

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<KrakenAnimeBloc>(
            create: (_) => krakenAnimeBloc,
            child: AnimeListingPage(),
          ),
        ),
      );

      expect(find.byType(ListView.builder()), findsOneWidget);
    });
  });
}
