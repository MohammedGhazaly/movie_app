import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/shared_widgets/movie_poster.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/core/utils/app_styles.dart';
import 'package:movies_app/dummy_movie_model.dart';

class RecomendedMovieItem extends StatelessWidget {
  final DummyMovieModel movieModel;
  const RecomendedMovieItem({super.key, required this.movieModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.cardDarkColor,
          boxShadow: [
            BoxShadow(
                offset: const Offset(
                  5,
                  5,
                ),
                blurRadius: 5,
                color: Colors.black.withOpacity(0.2))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MoviePoster(movie: movieModel, height: 210.h),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: AppColors.yellowColor,
                  size: 24.sp,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  movieModel.score.toString(),
                  style: AppStyles.textStyle12,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              movieModel.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: AppStyles.textStyle14,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Row(
              children: [
                Text(
                  movieModel.realeseYear,
                  style: AppStyles.textStyle10
                      .copyWith(color: AppColors.greyLightColor),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  movieModel.rating,
                  style: AppStyles.textStyle10
                      .copyWith(color: AppColors.greyLightColor),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Text(
                    movieModel.durationTime,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.textStyle10
                        .copyWith(color: AppColors.greyLightColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
