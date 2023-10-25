import 'package:flutter/material.dart';

class MoviePoster extends StatelessWidget {
  final double height;
  final double aspectRatio;
  const MoviePoster(
      {super.key, required this.height, required this.aspectRatio});

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
                  image: AssetImage("assets/images/poster.png"),
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
