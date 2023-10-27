import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/models/movie_details_model/movie_details_model.dart';
import 'package:movies_app/services/api_services.dart';

part 'movie_detail_state.dart';

class MovieDetailCubit extends Cubit<MovieDetailState> {
  MovieDetailCubit() : super(MovieDetailLoading());
  Future<void> getMovieDetails(String movieId) async {
    emit(MovieDetailLoading());
    try {
      var response = await ApiService.getMovieDetails(movieId);
      if (response.statusCode != null) {
        emit(MovieDetailFailure(errorMessage: response.statusMessage!));
      } else {
        emit(MovieDetailSuccess(movieDetail: response));
      }
    } catch (e) {
      emit(MovieDetailFailure(errorMessage: "Error loading movies"));
    }
  }
}
