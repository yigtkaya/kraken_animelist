import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kraken_animelist/features/anime_detail/anime_detail_page.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/kraken_anime.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/demographic.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/image_info.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/image.dart' as MImage;
import 'package:kraken_animelist/features/anime_detail/presentation/anime_detail_page.dart';

void main() {
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
    expect(find.text('Genres: Action'), findsOneWidget);
    expect(find.text('Ranked: #1'), findsOneWidget);

    // Verify that the synopsis section is displayed
    expect(find.text('Synopsis'), findsOneWidget);
    expect(find.text('Test synopsis'), findsOneWidget);

    // Verify that the characters section is displayed
    expect(find.text('Characters'), findsOneWidget);

    // You can add more tests to verify other UI elements as needed
  });
}
