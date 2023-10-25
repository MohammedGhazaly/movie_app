import 'package:flutter/material.dart';
import 'package:movies_app/dummy_movie_model.dart';

class MoviePoster extends StatelessWidget {
  final DummyMovieModel movie;
  final double height;
  final double aspectRatio;
  const MoviePoster(
      {super.key,
      required this.movie,
      required this.height,
      required this.aspectRatio});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Stack(
        children: [
          AspectRatio(
            // aspectRatio: 65 / 100,
            aspectRatio: aspectRatio,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(movie.poster),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 32,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      movie.isWishListed == false
                          ? "assets/icons/bookmark_add.png"
                          : "assets/icons/bookmarked.png",
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
