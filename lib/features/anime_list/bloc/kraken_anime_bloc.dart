import 'package:bloc/bloc.dart';
import 'package:kraken_animelist/features/anime_list/bloc/kraken_anime_event.dart';
import 'package:kraken_animelist/features/anime_list/bloc/kraken_anime_state.dart';
import 'package:kraken_animelist/features/anime_list/domain/repository/anime_list_repository_impl.dart';

class KrakenAnimeBloc extends Bloc<KrakenAnimeEvent, KrakenAnimeState> {
  final KrakenAnimeRepositoryImpl krakenAnimeRepositoryImpl;
  int page = 1;
  KrakenAnimeBloc(
    this.krakenAnimeRepositoryImpl,
  ) : super(const KrakenAnimeStateLoading()) {
    on<AppStartEvent>(onStart);
    on<PullToRefreshEvent>(onPullToRefresh);
    on<LoadNextPageEvent>(onLoadNextPage);
  }

  Future<void> onStart(
    AppStartEvent event,
    Emitter<KrakenAnimeState> emit,
  ) async {
    try {
      final krakenResponse = await krakenAnimeRepositoryImpl.getAnimeList(page);
      emit(
        KrakenAnimeStateLoaded(krakenResponse),
      );
    } catch (e) {
      emit(const KrakenAnimeStateError("Something went wrong, please try again later."));
    }
  }

  Future<void> onPullToRefresh(
    PullToRefreshEvent event,
    Emitter<KrakenAnimeState> emit,
  ) async {
    try {
      page = 1;
      final krakenResponse = await krakenAnimeRepositoryImpl.getAnimeList(page);
      emit(
        KrakenAnimeStateLoaded(krakenResponse),
      );
    } catch (e) {
      emit(
        const KrakenAnimeStateError(
          "Something went wrong, please try again later.",
        ),
      );
    }
  }

  Future<void> onLoadNextPage(
    LoadNextPageEvent event,
    Emitter<KrakenAnimeState> emit,
  ) async {
    if (state is! KrakenAnimeStateLoaded) {
      return;
    }
    final prevKrakenResponse = (state as KrakenAnimeStateLoaded).krakenResponse;
    if (!prevKrakenResponse.pagination!.hasNextPage!) {
      return;
    }
    try {
      page++;
      final krakenResponse = await krakenAnimeRepositoryImpl.getAnimeList(page);
      final existingAnimeList = (state as KrakenAnimeStateLoaded).krakenResponse.data ?? [];
      final newAnimeList = krakenResponse.data ?? [];
      final updatedAnimeList = [...existingAnimeList, ...newAnimeList];
      emit(
        KrakenAnimeStateLoaded(
          krakenResponse.copyWith(
            data: updatedAnimeList,
          ),
        ),
      );
    } catch (e) {
      emit(
        const KrakenAnimeStateError(
          "Something went wrong, please try again later.",
        ),
      );
    }
  }

  void updatePage(int newPage) {
    page = newPage;
  }
}
