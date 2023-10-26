class Genre {
  final int id;
  final String genreTitle;

  Genre({required this.id, required this.genreTitle});

  static List<Genre> getGenres() {
    return [
      Genre(id: 28, genreTitle: "Action"),
      Genre(id: 12, genreTitle: "Adventure"),
      Genre(id: 16, genreTitle: "Animation"),
      Genre(id: 35, genreTitle: "Comedy"),
      Genre(id: 80, genreTitle: "Crime"),
      Genre(id: 99, genreTitle: "Documentary"),
      Genre(id: 18, genreTitle: "Drama"),
      Genre(id: 10751, genreTitle: "Family"),
      Genre(id: 14, genreTitle: "Fantasy"),
      Genre(id: 36, genreTitle: "History"),
      Genre(id: 27, genreTitle: "Horror"),
      Genre(id: 10402, genreTitle: "Music"),
      Genre(id: 9648, genreTitle: "Mystery"),
      Genre(id: 10749, genreTitle: "Romance"),
      Genre(id: 878, genreTitle: "Science Fiction"),
      Genre(id: 10770, genreTitle: "TV Movie"),
      Genre(id: 53, genreTitle: "Thriller"),
      Genre(id: 10752, genreTitle: "War"),
      Genre(id: 37, genreTitle: "Western"),
    ];
  }
}
