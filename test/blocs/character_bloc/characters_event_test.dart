import 'package:flutter_test/flutter_test.dart';
import 'package:kraken_animelist/features/anime_detail/bloc/characters_event.dart';

void main() {
  group("CharactersEvent", () {
    test("OpenPageEvent supports value equality", () {
      expect(OpenPageEvent(1), OpenPageEvent(1));
    });

    test("OpenPageEvent props are correct value equality", () {
      expect(OpenPageEvent(1).props, []);
    });
  });
}
