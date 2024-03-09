import 'package:flutter_test/flutter_test.dart';
import 'package:kraken_animelist/features/anime_list/bloc/kraken_anime_state.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/kraken_anime_response.dart';

void main() {
  group("KrakenAnimeState", () {
    group("KrakenAnimeStateLoading", () {
      KrakenAnimeStateLoading createSubject() {
        return const KrakenAnimeStateLoading();
      }

      test("supports value equality", () {
        expect(createSubject(), createSubject());
      });

      test("props are equal", () {
        expect(createSubject().props, createSubject().props);
      });
    });

    group("KrakenAnimeStateLoaded", () {
      KrakenAnimeStateLoaded createSubject() {
        return const KrakenAnimeStateLoaded(KrakenAnimeResponse());
      }

      test("supports value equality", () {
        expect(createSubject(), createSubject());
      });

      test("props are equal", () {
        expect(createSubject().props, createSubject().props);
      });
    });

    group("KrakenAnimeStateError", () {
      KrakenAnimeStateError createSubject() {
        return const KrakenAnimeStateError("Error");
      }

      test("supports value equality", () {
        expect(createSubject(), createSubject());
      });

      test("props are equal", () {
        expect(createSubject().props, createSubject().props);
      });
    });
  });
}
