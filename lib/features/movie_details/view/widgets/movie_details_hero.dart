import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MovieDetailsHero extends StatelessWidget {
  const MovieDetailsHero({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/background.png",
      width: double.infinity,
      height: 200.h,
      fit: BoxFit.fill,
    );
  }
}
