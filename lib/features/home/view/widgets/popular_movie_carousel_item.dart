import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/shared_widgets/movie_poster.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/core/utils/app_styles.dart';
import 'package:movies_app/dummy_movie_model.dart';

class PopularMovieCarouselItem extends StatelessWidget {
  final DummyMovieModel movie;
  const PopularMovieCarouselItem({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(
            movie.image,
            width: double.infinity,
            height: 200.h,
            fit: BoxFit.fill,
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/icons/play_icon.png",
              ),
            ),
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
                  movie: movie,
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
                        movie.title,
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
                            movie.realeseYear,
                            style: AppStyles.textStyle12
                                .copyWith(color: AppColors.greyLightColor),
                          ),
                          SizedBox(
                            width: 7.h,
                          ),
                          Text(
                            movie.rating,
                            style: AppStyles.textStyle12
                                .copyWith(color: AppColors.greyLightColor),
                          ),
                          SizedBox(
                            width: 7.h,
                          ),
                          Text(
                            movie.durationTime,
                            style: AppStyles.textStyle12
                                .copyWith(color: AppColors.greyLightColor),
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
