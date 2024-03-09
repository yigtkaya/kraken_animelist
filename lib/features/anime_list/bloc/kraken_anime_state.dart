import 'package:equatable/equatable.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/kraken_anime_response.dart';

abstract class KrakenAnimeState extends Equatable {
  const KrakenAnimeState();

  @override
  List<Object> get props => [];
}

class KrakenAnimeStateLoading extends KrakenAnimeState {
  const KrakenAnimeStateLoading();

  @override
  List<Object> get props => [];
}

class KrakenAnimeStateLoaded extends KrakenAnimeState {
  final KrakenAnimeResponse krakenResponse;

  const KrakenAnimeStateLoaded(this.krakenResponse);

  @override
  List<Object> get props => [krakenResponse];
}

class KrakenAnimeStateError extends KrakenAnimeState {
  final String message;

  const KrakenAnimeStateError(this.message);

  @override
  List<Object> get props => [message];
}
