import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/features/search/view/widgets/custom_text_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.w),
            child: CustomTextField(),
          ),
          // Expanded(
          //   child: ListView.separated(
          //     itemCount: 10,
          //     separatorBuilder: (context, index) => Container(
          //       color: AppColors.greyDarkColor,
          //       height: 2,
          //     ),
          //     itemBuilder: (context, index) {},
          //   ),
          // ),
          // Expanded(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Image.asset(
          //         "assets/images/no_movies.png",
          //       ),
          //       SizedBox(
          //         height: 10.h,
          //       ),
          //       Text(
          //         "Please enter the name of the movie",
          //         textAlign: TextAlign.center,
          //       )
          //     ],
          //   ),
          // )
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/no_movies.png",
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "No movies found",
                  textAlign: TextAlign.center,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
