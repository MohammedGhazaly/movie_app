class MoveiResponse {
  MoveiResponse({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
    this.success,
    this.statusCode,
    this.statusMessage,
  });

  MoveiResponse.fromJson(dynamic json) {
    page = json['page'];

    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Movie.fromJson(v));
      });
    }

    totalPages = json['total_pages'];
    totalResults = json['total_results'];
    statusCode = json["status_code"];
    statusMessage = json["status_message"];
    success = json["success"];
  }
  int? page;
  List<Movie>? results;
  int? totalPages;
  int? totalResults;
  int? statusCode;
  String? statusMessage;
  bool? success;
}

class Movie {
  Movie({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  Movie.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<int>() : [];

    id = json['id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];

    overview = json['overview'];
    popularity = json['popularity'];

    posterPath = json['poster_path'];
    releaseDate = getYear(json['release_date']);

    title = json['title'];
    video = json['video'];

    // انا طلع عيني بسببك
    voteAverage = json["vote_average"].toString();

    voteCount = json['vote_count'];
  }
  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  String? voteAverage;
  int? voteCount;

  String getYear(String fullDate) {
    return fullDate.split("-")[0];
  }
}
