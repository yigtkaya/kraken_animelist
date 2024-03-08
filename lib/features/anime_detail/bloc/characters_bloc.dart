import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kraken_animelist/features/anime_detail/domain/models/kraken_anime_detail_response.dart';
import 'package:kraken_animelist/features/anime_detail/domain/repository/characters_repository_impl.dart';

part 'characters_state.dart';
part 'characters_event.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final charactersRepositoryImpl = CharactersRepositoryImpl();
  CharactersBloc() : super(const CharactersStateLoading()) {
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
