import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kraken_animelist/features/anime_list/bloc/kraken_anime_bloc.dart';
import 'package:kraken_animelist/features/anime_list/bloc/kraken_anime_event.dart';
import 'package:kraken_animelist/features/anime_list/bloc/kraken_anime_state.dart';
import 'package:kraken_animelist/features/anime_list/presentation/anime_list_item.dart';
import 'package:kraken_animelist/src/shared/extensions/int_extension.dart';
import 'package:kraken_animelist/src/shared/extensions/list_extension.dart';

class AnimeListingPage extends StatefulWidget {
  const AnimeListingPage({super.key});

  @override
  State<AnimeListingPage> createState() => _AnimeListingPageState();
}

class _AnimeListingPageState extends State<AnimeListingPage> {
  final scrollController = ScrollController();
  final pageSize = 25;
  @override
  void initState() {
    scrollController.addListener(onScroll);
    super.initState();
  }

  void onScroll() {
    if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
      BlocProvider.of<KrakenAnimeBloc>(context).add(
        const LoadNextPageEvent(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2C386B),
        title: Text(
          'Kraken Anime',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          BlocProvider.of<KrakenAnimeBloc>(context).add(
            const PullToRefreshEvent(),
          );
        },
        child: Padding(
          padding: EdgeInsets.all(8.0.w),
          child: BlocBuilder<KrakenAnimeBloc, KrakenAnimeState>(
            builder: (context, state) {
              if (state is KrakenAnimeStateLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state is KrakenAnimeStateLoaded) {
                final animeList = state.krakenResponse.data;
                if (animeList.isNotNullOrEmpty) {
                  return Column(
                    children: [
                      Expanded(
                        child: ListView.separated(
                          shrinkWrap: true,
                          controller: scrollController,
                          itemCount: animeList!.length,
                          separatorBuilder: (context, index) => 12.rH,
                          itemBuilder: (context, index) {
                            return AnimeListItem(krakenAnime: animeList[index]);
                          },
                        ),
                      ),
                    ],
                  );
                } else {
                  return Center(
                    child: Text(
                      'No data found',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.grey,
                      ),
                    ),
                  );
                }
              }
              return Center(
                child: Text(
                  'Something went wrong, please pull to refresh',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.grey,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
