import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kraken_animelist/features/anime_list/bloc/app_bloc.dart';
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

  @override
  void initState() {
    scrollController.addListener(onScroll);
    super.initState();
  }

  void onScroll() {
    if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
      BlocProvider.of<AppBloc>(context).add(
        const LoadNextPageEvent(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Kraken Anime List',
          style: TextStyle(color: Colors.white, fontSize: 18.sp),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          BlocProvider.of<AppBloc>(context).add(
            const PullToRefreshEvent(),
          );
        },
        child: Padding(
          padding: EdgeInsets.all(8.0.h),
          child: BlocBuilder<AppBloc, AppState>(
            builder: (context, state) {
              if (state is AppStateLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state is AppStateLoaded) {
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
