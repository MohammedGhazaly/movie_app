import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/core/utils/app_styles.dart';
import 'package:movies_app/features/home/view/widgets/popular_movie_carousel_item.dart';
import 'package:movies_app/features/home/view_model/popular_movies_cubit/popular_movies_cubit.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PopularMoviesCarouselSlider extends StatefulWidget {
  const PopularMoviesCarouselSlider({
    super.key,
  });

  @override
  State<PopularMoviesCarouselSlider> createState() =>
      _PopularMoviesCarouselSliderState();
}

class _PopularMoviesCarouselSliderState
    extends State<PopularMoviesCarouselSlider> {
  PopularMoviesCubit popularMoviesViewModel = PopularMoviesCubit();

  @override
  void initState() {
    // TODO: implement initState
    popularMoviesViewModel.getPopularMovies();
    super.initState();
  }

  Widget build(BuildContext context) {
    return BlocBuilder<PopularMoviesCubit, PopularMoviesState>(
      bloc: popularMoviesViewModel,
      builder: (context, state) {
        if (state is PopularMoviesSuccess) {
          return CarouselSlider.builder(
            itemCount: state.movies.length,
            itemBuilder: (context, index, realIndex) {
              return PopularMovieCarouselItem();
            },
            options: CarouselOptions(
              enlargeCenterPage: true,
              pageSnapping: false,
              padEnds: false,
              viewportFraction: 1,
              scrollPhysics: const NeverScrollableScrollPhysics(),
              // enlargeFactor: 0.5,
              clipBehavior: Clip.none,
              height: 200.h,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 6),
              scrollDirection: Axis.horizontal,
            ),
          );
        } else if (state is PopularMoviesFailure) {
          return SizedBox(
            width: double.infinity,
            height: 200.h,
            child: Center(
                child: Text(
              state.errorMessage,
              style: AppStyles.textStyle20,
            )),
          );
        } else {
          return SizedBox(
            width: double.infinity,
            height: 200.h,
            child: const Center(
              child: SpinKitFoldingCube(
                color: AppColors.yellowColor,
              ),
            ),
          );
        }
      },
    );
  }
}
