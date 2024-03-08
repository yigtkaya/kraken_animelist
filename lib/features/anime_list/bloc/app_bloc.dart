import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/kraken_anime_response.dart';
import 'package:kraken_animelist/features/anime_list/domain/repository/anime_list_repository_impl.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final krakenAnimeRepositoryImpl = KrakenAnimeRepositoryImpl();
  AppBloc() : super(const AppStateLoading()) {
    on<AppStartEvent>(onStart);
    on<PullToRefreshEvent>(onPullToRefresh);
  }

  Future<void> onStart(
    AppStartEvent event,
    Emitter<AppState> emit,
  ) async {
    try {
      final krakenResponse = await krakenAnimeRepositoryImpl.getAnimeList();
      emit(AppStateLoaded(krakenResponse));
    } catch (e) {
      emit(const AppStateError("Something went wrong, please try again later."));
    }
  }

  Future<void> onPullToRefresh(
    PullToRefreshEvent event,
    Emitter<AppState> emit,
  ) async {
    try {
      emit(const AppStateLoading());
      final krakenResponse = await krakenAnimeRepositoryImpl.getAnimeList();
      emit(AppStateLoaded(krakenResponse));
    } catch (e) {
      emit(const AppStateError("Something went wrong, please try again later."));
    }
  }
}
