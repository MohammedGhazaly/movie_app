import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/movie_details/view/widgets/movie_details_bottom.dart';
import 'package:movies_app/features/movie_details/view/widgets/movie_details_hero.dart';
import 'package:movies_app/features/movie_details/view/widgets/movie_details_top.dart';

class MovieDetailsBody extends StatelessWidget {
  const MovieDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MovieDetailsHero(),
        SizedBox(
          height: 15.h,
        ),
        MovieDetailsTop(),
        SizedBox(
          height: 20.h,
        ),
        MovieDetailsBottom()
      ],
    );
  }
}
