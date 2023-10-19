import 'package:flutter/material.dart';
import 'package:movies_app/dummy_movie_model.dart';
import 'package:movies_app/features/home/view/widgets/popular_movie_carousel_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          PopularMovieCarouselItem(
            movie: dummyMovieData[0],
          )
        ],
      ),
    );
  }
}
