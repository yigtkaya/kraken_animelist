import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kraken_animelist/features/anime_detail/bloc/characters_event.dart';
import 'package:kraken_animelist/features/anime_detail/bloc/characters_state.dart';
import 'package:kraken_animelist/features/anime_detail/data/repository/characters_repository_impl.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final CharactersRepositoryImpl charactersRepositoryImpl;
  CharactersBloc(
    this.charactersRepositoryImpl,
  ) : super(const CharactersStateLoading()) {
    on<OpenPageEvent>(onOpenPage);
  }

  Future<void> onOpenPage(
    OpenPageEvent event,
    Emitter<CharactersState> emit,
  ) async {
    try {
      final charactersResponse = await charactersRepositoryImpl.getCharacters(event.id);
      emit(CharactersStateLoaded(charactersResponse));
    } catch (e) {
      emit(const CharactersStateError("Something went wrong, please try again later."));
    }
  }
}
