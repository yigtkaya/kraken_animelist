import 'package:equatable/equatable.dart';

abstract class KrakenAnimeEvent extends Equatable {
  const KrakenAnimeEvent();

  @override
  List<Object> get props => [];
}

class AppStartEvent extends KrakenAnimeEvent {
  const AppStartEvent();
}

class PullToRefreshEvent extends KrakenAnimeEvent {
  const PullToRefreshEvent();
}

class LoadNextPageEvent extends KrakenAnimeEvent {
  const LoadNextPageEvent();
}
