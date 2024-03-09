import 'package:equatable/equatable.dart';
import 'package:kraken_animelist/features/anime_detail/domain/models/kraken_anime_detail_response.dart';

abstract class CharactersState extends Equatable {
  const CharactersState();

  @override
  List<Object> get props => [];
}

class CharactersStateLoading extends CharactersState {
  const CharactersStateLoading();

  @override
  List<Object> get props => [];
}

class CharactersStateLoaded extends CharactersState {
  final KrakenAnimeCharactersResponse characters;

  const CharactersStateLoaded(this.characters);

  @override
  List<Object> get props => [characters];
}

class CharactersStateError extends CharactersState {
  final String message;

  const CharactersStateError(this.message);

  @override
  List<Object> get props => [message];
}
