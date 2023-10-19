import 'package:flutter/material.dart';
import 'package:movies_app/dummy_movie_model.dart';

class MoviePoster extends StatelessWidget {
  final DummyMovieModel movie;
  const MoviePoster({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 2.6 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(movie.poster),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Positioned(
              top: 0,
              left: 0,
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
