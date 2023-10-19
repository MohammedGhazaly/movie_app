import 'package:flutter/material.dart';
import 'package:movies_app/core/shared_widgets/movie_poster.dart';
import 'package:movies_app/core/utils/app_styles.dart';
import 'package:movies_app/dummy_movie_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "SEARCH",
        style: AppStyles.textStyle22,
      ),
    );

    // Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       MoviePoster(
    //         movie: dummyMovieData[0],
    //       ),
    //       MoviePoster(
    //         movie: dummyMovieData[1],
    //       ),
    //     ],
    //   ),
    // );
  }
}
