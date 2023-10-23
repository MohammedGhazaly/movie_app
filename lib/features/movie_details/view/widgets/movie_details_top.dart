import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/core/utils/app_styles.dart';

class MovieDetailsTop extends StatelessWidget {
  const MovieDetailsTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Dora and the lost city of gold",
            style: AppStyles.textStyle18.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          Row(
            children: [
              Text("2019",
                  style: AppStyles.textStyle10
                      .copyWith(color: AppColors.greyLightColor)),
              const SizedBox(
                width: 7,
              ),
              Text("PG-13",
                  style: AppStyles.textStyle10
                      .copyWith(color: AppColors.greyLightColor)),
              const SizedBox(
                width: 7,
              ),
              Text("2h 7m",
                  style: AppStyles.textStyle10
                      .copyWith(color: AppColors.greyLightColor)),
            ],
          ),
        ],
      ),
    );
  }
}
