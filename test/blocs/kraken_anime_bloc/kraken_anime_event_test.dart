import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:kraken_animelist/features/anime_list/bloc/kraken_anime_event.dart';

void main() {
  group('AppStartEvent', () {
    test('supports value equality', () {
      expect(AppStartEvent(), AppStartEvent());
    });

    test(
      "props are correct value equality",
      () => expect(
        AppStartEvent().props,
        [],
      ),
    );
  });

  group('PullToRefreshEvent', () {
    test('supports value equality', () {
      expect(PullToRefreshEvent(), PullToRefreshEvent());
    });

    test(
      "props are correct value equality",
      () => expect(
        PullToRefreshEvent().props,
        [],
      ),
    );
  });

  group('LoadNextPageEvent', () {
    test('supports value equality', () {
      expect(LoadNextPageEvent(), LoadNextPageEvent());
    });

    test(
      "props are correct value equality",
      () => expect(LoadNextPageEvent().props, []),
    );
  });
}
