import 'dart:convert';

import 'package:movies_app/core/constants/api_constants.dart';
import 'package:movies_app/models/movie_details_model/movie_details_model.dart';
import 'package:movies_app/models/movie_model/movie_response_model.dart';
import "package:http/http.dart" as http;

class ApiService {
  static Future<MoveiResponse> getPopularMovies() async {
    try {
      Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.popularEndPoint, {
        "api_key": ApiConstants.apiKey,
      });
      var response = await http.get(url);

      Map<String, dynamic> jsonData = jsonDecode(response.body);

      var responseData = MoveiResponse.fromJson(jsonData);
      return responseData;
    } on Exception catch (e) {
      throw e;
    }
  }

  static Future<MovieDetails> movieDetails(String movieId) async {
    try {
      Uri url = Uri.https(
        ApiConstants.baseUrl,
        ApiConstants.movieEndPoint,
        {"api_key": ApiConstants.apiKey, "movie_id": movieId},
      );
      var response = await http.get(url);

      Map<String, dynamic> jsonData = jsonDecode(response.body);

      var responseData = MovieDetails.fromJson(jsonData);
      return responseData;
    } on Exception catch (e) {
      throw e;
    }
  }
}
