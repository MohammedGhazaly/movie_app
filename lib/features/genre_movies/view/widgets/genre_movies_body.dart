import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/core/utils/app_styles.dart';
import 'package:movies_app/features/genre_movies/view/widgets/movie_genre_list_tile.dart';
import 'package:movies_app/features/genre_movies/view_model/genre_movies/genre_movies_cubit.dart';

class GenreMoviesBody extends StatefulWidget {
  final int genreId;
  const GenreMoviesBody({
    super.key,
    required this.genreId,
  });

  @override
  State<GenreMoviesBody> createState() => _GenreMoviesBodyState();
}

class _GenreMoviesBodyState extends State<GenreMoviesBody> {
  GenreMoviesCubit genreMoviesCubit = GenreMoviesCubit();
  @override
  void initState() {
    super.initState();
    genreMoviesCubit.getMoviesByGenreId(widget.genreId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenreMoviesCubit, GenreMoviesState>(
      bloc: genreMoviesCubit,
      builder: (context, state) {
        if (state is GenreMoviesSuccess) {
          return ListView.builder(
            itemCount: state.movies.length,
            itemBuilder: (context, index) {
              return MovieGenreListTle(
                movieDetails: state.movies[index],
              );
            },
          );
        } else if (state is GenreMoviesFailure) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  state.errorMessage,
                  style: AppStyles.textStyle22,
                ),
              ],
            ),
          );
        } else {
          return Center(
              child: SpinKitFoldingCube(
            size: 28.sp,
            color: AppColors.yellowColor,
          ));
        }
      },
    );
  }
}
