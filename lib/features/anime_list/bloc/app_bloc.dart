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
  }

  Future<void> onStart(
    AppStartEvent event,
    Emitter<AppState> emit,
  ) async {
    final krakenResponse = await krakenAnimeRepositoryImpl.getAnimeList();
    emit(AppStateLoaded(krakenResponse));
  }
}
