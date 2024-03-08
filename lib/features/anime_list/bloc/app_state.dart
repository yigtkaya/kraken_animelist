part of 'app_bloc.dart';

abstract class AppState extends Equatable {
  const AppState();

  @override
  List<Object> get props => [];
}

class AppStateLoading extends AppState {
  const AppStateLoading();

  @override
  List<Object> get props => [];
}

class AppStateLoaded extends AppState {
  final KrakenAnimeResponse animeList;

  const AppStateLoaded(this.animeList);

  @override
  List<Object> get props => [animeList];
}

class AppStateError extends AppState {
  final String message;

  const AppStateError(this.message);

  @override
  List<Object> get props => [message];
}
