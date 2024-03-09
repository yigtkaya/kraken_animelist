import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/kraken_anime_response.dart';
import 'package:kraken_animelist/features/anime_list/domain/repository/anime_list_repository_impl.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final krakenAnimeRepositoryImpl = KrakenAnimeRepositoryImpl();
  int page = 1;
  AppBloc() : super(const AppStateLoading()) {
    on<AppStartEvent>(onStart);
    on<PullToRefreshEvent>(onPullToRefresh);
    on<LoadNextPageEvent>(onLoadNextPage);
  }

  Future<void> onStart(
    AppStartEvent event,
    Emitter<AppState> emit,
  ) async {
    try {
      final krakenResponse = await krakenAnimeRepositoryImpl.getAnimeList(page);
      emit(
        AppStateLoaded(krakenResponse),
      );
    } catch (e) {
      emit(const AppStateError("Something went wrong, please try again later."));
    }
  }

  Future<void> onPullToRefresh(
    PullToRefreshEvent event,
    Emitter<AppState> emit,
  ) async {
    try {
      emit(
        const AppStateLoading(),
      );
      page = 1;
      final krakenResponse = await krakenAnimeRepositoryImpl.getAnimeList(page);
      emit(
        AppStateLoaded(krakenResponse),
      );
    } catch (e) {
      emit(
        const AppStateError(
          "Something went wrong, please try again later.",
        ),
      );
    }
  }

  Future<void> onLoadNextPage(
    LoadNextPageEvent event,
    Emitter<AppState> emit,
  ) async {
    final prevKrakenResponse = (state as AppStateLoaded).krakenResponse;
    if (!prevKrakenResponse.pagination!.hasNextPage!) {
      return;
    }
    try {
      page++;
      final krakenResponse = await krakenAnimeRepositoryImpl.getAnimeList(page);
      final existingAnimeList = (state as AppStateLoaded).krakenResponse.data ?? [];
      final newAnimeList = krakenResponse.data ?? [];
      final updatedAnimeList = [...existingAnimeList, ...newAnimeList];
      emit(
        AppStateLoaded(
          krakenResponse.copyWith(
            data: updatedAnimeList,
          ),
        ),
      );
    } catch (e) {
      emit(
        const AppStateError(
          "Something went wrong, please try again later.",
        ),
      );
    }
  }

  void updatePage(int newPage) {
    page = newPage;
  }
}
