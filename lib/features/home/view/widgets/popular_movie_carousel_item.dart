import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/shared_widgets/movie_poster.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/core/utils/app_styles.dart';

class PopularMovieCarouselItem extends StatelessWidget {
  const PopularMovieCarouselItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(
            "assets/images/background.png",
            width: double.infinity,
            height: 200.h,
            fit: BoxFit.fill,
          ),
          Positioned(
            // bottom: MediaQuery.of(context).size.height * 0.13 * -1,
            bottom: -100.h,
            right: 0,
            left: 20.w,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MoviePoster(
                  aspectRatio: 65 / 100,
                  height: 200.h,
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " movie.title",
                        style: AppStyles.textStyle14,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Text(
                            " ",
                            style: AppStyles.textStyle12
                                .copyWith(color: AppColors.greyLightColor),
                          ),
                          SizedBox(
                            width: 7.h,
                          ),
                          Text(
                            "",
                            style: AppStyles.textStyle12
                                .copyWith(color: AppColors.greyLightColor),
                          ),
                          SizedBox(
                            width: 7.h,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
