import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/constants/api_constants.dart';
import 'package:movies_app/models/movie_details_model/movie_details_model.dart';
import 'package:movies_app/models/movie_model/movie_response_model.dart';

class MoviePoster extends StatelessWidget {
  final double height;
  final double aspectRatio;
  final MovieDetails movie;
  const MoviePoster(
      {super.key,
      required this.height,
      required this.aspectRatio,
      required this.movie});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 65 / 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                // imageUrl: artilce.urlToImage!,
                imageUrl: "${ApiConstants.imagePrefix}${movie.posterPath}",
                fit: BoxFit.fill,
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
                      image: AssetImage("assets/icons/bookmark_add.png")

                      // AssetImage(
                      //   movie.isWishListed == false
                      //       ? "assets/icons/bookmark_add.png"
                      //       : "assets/icons/bookmarked.png",
                      // ),
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
