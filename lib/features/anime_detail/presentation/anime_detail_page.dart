import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
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
    return RouteHelper.platform(
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
    final genres = krakenAnime.genres?.map((e) => e.name).toList().join(",") ?? [];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffE5EBFE),
        centerTitle: true,
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
              Hero(
                tag: krakenAnime.malId.toString(),
                child: CachedNetworkImage(
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
                        fontSize: 20.sp,
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
              12.rH,
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              12.rH,
              ExpandablePanel(
                controller: ExpandableController(
                  initialExpanded: true,
                ),
                header: Text(
                  "Information",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                collapsed: const SizedBox.shrink(),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Type: ",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "${krakenAnime.type}",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Episodes: ",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "${krakenAnime.episodes}",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Genres: ",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "$genres",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Ranked: ",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "#${krakenAnime.rank}",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              6.rH,
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              12.rH,
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
              12.rH,
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              12.rH,
              Text(
                "Characters",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              12.rH,
              BlocBuilder<CharactersBloc, CharactersState>(
                builder: (context, state) {
                  if (state is CharactersStateLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  if (state is CharactersStateLoaded) {
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 2.w,
                      ),
                      itemCount: state.characters.data!.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: ((context, index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 120.r,
                              width: 120.r,
                              child: CachedNetworkImage(
                                imageUrl: state.characters.data![index].character!.images!.jpg!.imageUrl ?? "",
                                imageBuilder: (_, provider) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      image: DecorationImage(
                                        image: provider,
                                        fit: BoxFit.fill,
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
                            12.rH,
                            Text(
                              state.characters.data![index].character!.name ?? "",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
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
