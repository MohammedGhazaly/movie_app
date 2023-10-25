import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/core/utils/app_styles.dart';
import 'package:movies_app/dummy_movie_model.dart';
import 'package:movies_app/features/home/view/widgets/recomended_movie_item.dart';

class RecomendedMoviesSection extends StatelessWidget {
  const RecomendedMoviesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      width: double.infinity,
      color: AppColors.darkColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Recomended",
              style: AppStyles.textStyle18.copyWith(
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            height: 310.h,
            child: ListView.builder(
              itemCount: dummyMovieData.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: MovieSubDetailsItem(movieModel: dummyMovieData[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
