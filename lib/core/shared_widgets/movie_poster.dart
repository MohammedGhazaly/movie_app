import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/dummy_movie_model.dart';

class MoviePoster extends StatelessWidget {
  final DummyMovieModel movie;
  const MoviePoster({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 65 / 100,
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
          Positioned(
            top: 0,
            left: 0,
            child: InkWell(
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
