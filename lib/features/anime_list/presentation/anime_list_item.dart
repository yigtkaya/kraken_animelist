import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kraken_animelist/features/anime_detail/presentation/anime_detail_page.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/kraken_anime.dart';
import 'package:kraken_animelist/src/shared/extensions/build_context_extension.dart';
import 'package:kraken_animelist/src/shared/extensions/int_extension.dart';
import 'package:shimmer/shimmer.dart';

class AnimeListItem extends StatelessWidget {
  final KrakenAnime krakenAnime;
  const AnimeListItem({super.key, required this.krakenAnime});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(
          AnimeDetailPage.route(
            krakenAnime,
          ),
        );
      },
      child: Card(
        shadowColor: Colors.orangeAccent,
        elevation: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: context.screenHeight * 0.16.h,
              width: context.screenWidth * 0.3.w,
              child: Hero(
                tag: krakenAnime.malId.toString(),
                child: CachedNetworkImage(
                  imageUrl: krakenAnime.images?["jpg"]?.largeImageUrl ?? "",
                  imageBuilder: (_, provider) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: provider,
                          fit: BoxFit.fill,
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
            ),
            12.rW,
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0.h),
                child: Column(
                  children: [
                    Text(
                      krakenAnime.title ?? "Title",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    12.rH,
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(Icons.star_sharp, color: Colors.amber, size: 18.w),
                          ),
                          WidgetSpan(
                            child: 4.rW,
                          ),
                          TextSpan(
                            text: krakenAnime.score.toString(),
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
