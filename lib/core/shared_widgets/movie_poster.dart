import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/constants/api_constants.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/core/utils/app_styles.dart';
import 'package:movies_app/cubits/watchlist_cubit/wishlist_cubit.dart';
import 'package:movies_app/models/movie_details_model/movie_details_model.dart';

class MoviePoster extends StatefulWidget {
  final double height;
  final double aspectRatio;
  final MovieDetails movie;
  const MoviePoster(
      {super.key,
      required this.height,
      required this.aspectRatio,
      required this.movie});

  @override
  State<MoviePoster> createState() => _MoviePosterState();
}

class _MoviePosterState extends State<MoviePoster> {
  @override
  Widget build(BuildContext context) {
    var wishListCubit = BlocProvider.of<WatchlistCubit>(context, listen: true);
    return SizedBox(
      height: widget.height,
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 65 / 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                // imageUrl: artilce.urlToImage!,
                // imageUrl: "${ApiConstants.imagePrefix}${movie.posterPath}",
                imageUrl:
                    "${ApiConstants.imagePrefix}${widget.movie.posterPath}",
                fit: BoxFit.fill,
                errorWidget: (context, str, ob) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.yellowColor.withOpacity(
                        1,
                      ),
                    ),
                    child: Center(
                        child: Text(
                      "Sorry, no image found.",
                      textAlign: TextAlign.center,
                      style:
                          AppStyles.textStyle16.copyWith(color: Colors.black),
                    )),
                  );
                },
              ),
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              child: InkWell(
                onTap: () {
                  wishListCubit.toggleWatchList(widget.movie.id!);
                },
                child: Container(
                  width: 32,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        !wishListCubit.moveiIds.contains(widget.movie.id!)
                            ? "assets/icons/bookmark_add.png"
                            : "assets/icons/bookmarked.png",
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
