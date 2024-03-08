import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
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
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12.r),
            bottomRight: Radius.circular(12.r),
          ),
          color: Colors.grey.shade300,
        ),
        child: Row(
          children: [
            SizedBox(
              height: context.screenHeight * 0.16.h,
              width: context.screenWidth * 0.3.w,
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
            12.rW,
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    krakenAnime.title ?? "",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  12.rH,
                  Text(
                    "${krakenAnime.score.toString()} ⭐️",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
