import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/kraken_anime_response.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppStateLoading()) {
    on<AppStartEvent>(onStart);
  }

  Future<void> onStart(
    AppStartEvent event,
    Emitter<AppState> emit,
  ) async {
    // Use native method channels for calling service requests.
  }
}
