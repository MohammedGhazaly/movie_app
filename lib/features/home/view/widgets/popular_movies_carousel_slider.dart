import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/dummy_movie_model.dart';
import 'package:movies_app/features/home/view/widgets/popular_movie_carousel_item.dart';

class PopularMoviesCarouselSlider extends StatelessWidget {
  const PopularMoviesCarouselSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: dummyMovieData.length,
      itemBuilder: (context, index, realIndex) {
        return PopularMovieCarouselItem(movie: dummyMovieData[index]);
      },
      options: CarouselOptions(
        enlargeCenterPage: true,
        pageSnapping: false,
        padEnds: false,
        viewportFraction: 1,
        scrollPhysics: const NeverScrollableScrollPhysics(),
        // enlargeFactor: 0.5,
        clipBehavior: Clip.none,
        height: 200.h,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
