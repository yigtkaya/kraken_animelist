import 'package:flutter_test/flutter_test.dart';
import 'package:kraken_animelist/features/anime_detail/presentation/anime_detail_page.dart';
import 'package:kraken_animelist/features/anime_list/presentation/anime_list_item.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/kraken_anime.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/image.dart' as useImage;
import 'package:flutter/material.dart';
import 'package:mocktail/mocktail.dart';
import 'package:kraken_animelist/src/shared/observers/custom_route_observer.dart';

class MockBuildContext extends Mock implements BuildContext {}

class MockNavigatorObserver extends Mock implements CustomRouteObserver {}

void main() {
  group('AnimeListItem', () {
    late KrakenAnime mockKrakenAnime;

    setUp(() {
      mockKrakenAnime = KrakenAnime(
        malId: 1,
        title: 'Mock Anime',
        score: 8.5,
        images: {
          "image_url": useImage.Image(
            largeImageUrl: "https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png",
          )
        },
      );
    });

    testWidgets('Widget renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: AnimeListItem(krakenAnime: mockKrakenAnime),
        ),
      ));

      // Verify that the widget renders correctly
      expect(find.byType(AnimeListItem), findsOneWidget);
      expect(find.text(mockKrakenAnime.title!), findsOneWidget);
      expect(find.text(mockKrakenAnime.score.toString()), findsOneWidget);
    });

    testWidgets('Navigates to AnimeDetailPage when tapped', (WidgetTester tester) async {
      final mockNavigatorObserver = MockNavigatorObserver();
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: AnimeListItem(krakenAnime: mockKrakenAnime),
        ),
        navigatorObservers: [mockNavigatorObserver],
      ));

      // Tap on the widget
      await tester.tap(find.byType(AnimeListItem));

      // Wait for navigation
      await tester.pumpAndSettle();

      // Verify that navigation occurred and correct arguments are passed
      verify(() => mockNavigatorObserver.didPush(any(), any())).called(1);
      verify(() => mockNavigatorObserver.didPush(any(), any())).captured.single.whereType<Route>().forEach((route) {
        expect("/anime_detail", AnimeDetailPage.routeName);
        expect((route.settings.arguments as KrakenAnime).malId, mockKrakenAnime.malId);
      });
    });
  });
}
