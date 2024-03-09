import 'package:flutter_test/flutter_test.dart';
import 'package:kraken_animelist/features/anime_detail/bloc/characters_state.dart';
import 'package:kraken_animelist/features/anime_detail/domain/models/kraken_anime_detail_response.dart';

void main() {
  group("CharactersState", () {
    group("CharactersStateLoading", () {
      CharactersStateLoading createSubject() {
        return const CharactersStateLoading();
      }

      test("supports value equality", () {
        expect(createSubject(), createSubject());
      });

      test("props are equal", () {
        expect(createSubject().props, createSubject().props);
      });
    });

    group("CharactersStateLoaded", () {
      CharactersStateLoaded createSubject() {
        return const CharactersStateLoaded(KrakenAnimeCharactersResponse());
      }

      test("supports value equality", () {
        expect(createSubject(), createSubject());
      });

      test("props are equal", () {
        expect(createSubject().props, createSubject().props);
      });
    });

    group("CharactersStateError", () {
      CharactersStateError createSubject() {
        return const CharactersStateError("Error");
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
