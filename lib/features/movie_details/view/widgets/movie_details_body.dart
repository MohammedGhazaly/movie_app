import 'package:flutter/material.dart';
import 'package:movies_app/features/movie_details/view/widgets/movie_full_details_section.dart';

class MovieDetailsBody extends StatelessWidget {
  final int movieId;
  const MovieDetailsBody({
    super.key,
    required this.movieId,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MovieFullDetailsSection(movieId: movieId),

          // SimilarMoviesSection()
        ],
      ),
    );
  }
}
