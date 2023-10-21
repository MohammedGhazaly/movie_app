import 'package:flutter/material.dart';
import 'package:movies_app/features/home/view/widgets/new_releases_section.dart';
import 'package:movies_app/features/home/view/widgets/popular_movies_carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/home/view/widgets/recomended_movies_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            PopularMoviesCarouselSlider(),
            SizedBox(
              height: 175.h,
            ),
            NewReleasesSection(),
            SizedBox(
              height: 30.h,
            ),
            RecomendedMoviesSection(),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
