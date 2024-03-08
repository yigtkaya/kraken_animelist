import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kraken_animelist/features/anime_detail/bloc/characters_bloc.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/kraken_anime.dart';
import 'package:kraken_animelist/src/shared/extensions/build_context_extension.dart';
import 'package:kraken_animelist/src/shared/extensions/int_extension.dart';
import 'package:kraken_animelist/src/shared/utils/app_navigator.dart';
import 'package:shimmer/shimmer.dart';

class AnimeDetailPage extends StatelessWidget {
  final KrakenAnime krakenAnime;
  const AnimeDetailPage({super.key, required this.krakenAnime});

  static const routeName = "/anime_detail";

  static Route<bool> route(KrakenAnime krakenAnime) {
    return RouteHelper.slide(
      settings: const RouteSettings(name: routeName),
      builder: (_) {
        return BlocProvider<CharactersBloc>(
          create: (context) => CharactersBloc()..add(OpenPageEvent(krakenAnime.malId!)),
          child: AnimeDetailPage(
            krakenAnime: krakenAnime,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          krakenAnime.title!,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(8.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedNetworkImage(
                imageUrl: krakenAnime.images?["jpg"]?.largeImageUrl ?? "",
                imageBuilder: (_, provider) {
                  return Container(
                    height: context.screenHeight * 0.25.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      image: DecorationImage(
                        image: provider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                placeholder: (context, url) => SizedBox(
                  height: context.screenHeight * 0.24.h,
                  width: double.infinity,
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => const Text('error'),
              ),
              12.rH,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      krakenAnime.title ?? "",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  6.rW,
                  Text(
                    "${krakenAnime.score.toString()} ⭐️",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              6.rH,
              Divider(
                color: Colors.grey.shade200,
                thickness: 2,
              ),
              6.rH,
              Text(
                "Information",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Type: ${krakenAnime.type ?? ""}",
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              Text(
                "Episodes: ${krakenAnime.episodes ?? ""}",
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              6.rH,
              Divider(
                color: Colors.grey.shade200,
                thickness: 2,
              ),
              6.rH,
              Text(
                "Synopsis",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              12.rH,
              Text(
                krakenAnime.synopsis ?? "",
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              16.rH,
              Text(
                "Characters",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              6.rH,
              BlocBuilder<CharactersBloc, CharactersState>(
                builder: (context, state) {
                  if (state is CharactersStateLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  if (state is CharactersStateLoaded) {
                    return ListView.builder(
                      itemCount: state.characters.data!.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: ((context, index) {
                        return Row(
                          children: [
                            SizedBox(
                              height: 100.r,
                              width: 100.r,
                              child: CachedNetworkImage(
                                imageUrl: state.characters.data![index].character!.images!.jpg!.imageUrl ?? "",
                                imageBuilder: (_, provider) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      image: DecorationImage(
                                        image: provider,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                },
                                placeholder: (context, url) => SizedBox(
                                  height: 100.r,
                                  width: 100.r,
                                  child: Shimmer.fromColors(
                                    baseColor: Colors.grey[300]!,
                                    highlightColor: Colors.grey[100]!,
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                      ),
                                    ),
                                  ),
                                ),
                                errorWidget: (context, url, error) => const Text('error'),
                              ),
                            ),
                            12.rW,
                            Flexible(
                              child: Text(
                                state.characters.data![index].character!.name ?? "",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                    );
                  }

                  return const Center(
                    child: Text(
                      "Something went wrong, please try again later.",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}