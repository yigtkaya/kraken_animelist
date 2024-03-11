import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:kraken_animelist/features/anime_list/presentation/anime_list_item.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/kraken_anime.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/image.dart' as useImage;
import 'package:kraken_animelist/src/shared/extensions/build_context_extension.dart';

// Mocking CachedNetworkImageProvider
class MockCachedNetworkImageProvider extends Mock implements CachedNetworkImageProvider {}

class BuildContextExtensionMock extends Mock implements ContextExtension {}

void main() {
  group('AnimeListItem widget test', () {
    late KrakenAnime mockAnime;

    setUp(() {
      mockAnime = KrakenAnime(
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

    testWidgets('Widget displays anime information correctly', (WidgetTester tester) async {
      // Arrange
      final mockProvider = MockCachedNetworkImageProvider();
      when(() => mockProvider.resolve(any())).thenAnswer((_) async => ImageStreamCompleter());

      // Mocking the context extension methods
      final screenHeight = 800.0;
      final screenWidth = 600.0;
      final screenUtilExtension = BuildContextExtensionMock();

      await tester.pumpWidget(
        MaterialApp(
          home: Material(
            child: AnimeListItem(
              krakenAnime: mockAnime,
            ),
          ),
        ),
      );

      // Act
      await tester.pumpAndSettle();

      // Assert
      expect(find.text('Mock Anime'), findsOneWidget);
      expect(find.text('9.0'), findsOneWidget);
      expect(find.byType(CachedNetworkImage), findsOneWidget);
    });
  });
}
