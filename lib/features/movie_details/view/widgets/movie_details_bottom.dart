import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/shared_widgets/movie_poster.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/core/utils/app_styles.dart';
import 'package:movies_app/features/movie_details/view/widgets/movie_genres.dart';

class MovieDetailsBottom extends StatelessWidget {
  const MovieDetailsBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // MoviePoster(
          //   aspectRatio: 65 / 100,
          //   height: 200.h,
          // ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 10,
                  runSpacing: 5,
                  children: [
                    MovieGenres(),
                    MovieGenres(),
                    MovieGenres(),
                    MovieGenres(),
                    MovieGenres(),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school. ",
                  style: AppStyles.textStyle14
                      .copyWith(color: AppColors.greyLightColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: AppColors.yellowColor,
                    ),
                    Text(
                      "7.7",
                      style: AppStyles.textStyle18
                          .copyWith(fontWeight: FontWeight.normal),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
