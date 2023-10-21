import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/dummy_movie_model.dart';
import 'package:movies_app/features/home/view/widgets/popular_movie_carousel_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movies_app/features/home/view/widgets/popular_movies_carousel_slider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          PopularMoviesCarouselSlider(),
        ],
      ),
    );
  }
}
