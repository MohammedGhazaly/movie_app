class DummyMovieModel {
  final String image;
  final String poster;
  final String title;
  final String description;
  final String realeseYear;
  final String rating;
  final double score;
  final String durationTime;
  final List<String> generes;
  final List<String> actors;
  final bool isWishListed;

  DummyMovieModel({
    required this.image,
    required this.poster,
    required this.title,
    required this.description,
    required this.realeseYear,
    required this.rating,
    required this.score,
    required this.durationTime,
    required this.generes,
    this.isWishListed = false,
    required this.actors,
  });

  static List<DummyMovieModel> dummyMovieData() {
    return [
      DummyMovieModel(
          image: "assets/images/background.png",
          poster: "assets/images/poster.png",
          title: "Dora and the lost city of gold",
          description:
              "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
          realeseYear: "2019",
          rating: "PG-13",
          score: 7.7,
          durationTime: "2h 7m",
          generes: ["action", "drama", "fantasy", "war", "crime", "comedy"],
          actors: ["Al-pachino", "Robery de-niro"]),
      DummyMovieModel(
          image: "assets/images/background.png",
          poster: "assets/images/poster.png",
          title: "Dora and the lost city of gold",
          description:
              "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
          realeseYear: "2019",
          rating: "PG-13",
          score: 7.7,
          durationTime: "2h 7m",
          generes: ["action", "drama", "fantasy"],
          actors: ["Al-pachino", "Robery de-niro"],
          isWishListed: true),
      DummyMovieModel(
          image: "assets/images/background.png",
          poster: "assets/images/poster.png",
          title: "Dora and the lost city of gold",
          description:
              "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
          realeseYear: "2019",
          rating: "PG-13",
          score: 7.7,
          durationTime: "2h 7m",
          generes: ["action", "drama", "fantasy"],
          actors: ["Al-pachino", "Robery de-niro"]),
      DummyMovieModel(
          image: "assets/images/background.png",
          poster: "assets/images/poster.png",
          title: "Dora and the lost city of gold",
          description:
              "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
          realeseYear: "2019",
          rating: "PG-13",
          score: 7.7,
          durationTime: "2h 7m",
          generes: ["action", "drama", "fantasy"],
          actors: ["Al-pachino", "Robery de-niro"],
          isWishListed: true),
      DummyMovieModel(
          image: "assets/images/background.png",
          poster: "assets/images/poster.png",
          title: "Dora and the lost city of gold",
          description:
              "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
          realeseYear: "2019",
          rating: "PG-13",
          score: 7.7,
          durationTime: "2h 7m",
          generes: ["action", "drama", "fantasy"],
          actors: ["Al-pachino", "Robery de-niro"]),
      DummyMovieModel(
          image: "assets/images/background.png",
          poster: "assets/images/poster.png",
          title: "Dora and the lost city of gold",
          description:
              "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
          realeseYear: "2019",
          rating: "PG-13",
          score: 7.7,
          durationTime: "2h 7m",
          generes: ["action", "drama", "fantasy"],
          actors: ["Al-pachino", "Robery de-niro"],
          isWishListed: true),
      DummyMovieModel(
          image: "assets/images/background.png",
          poster: "assets/images/poster.png",
          title: "Dora and the lost city of gold",
          description:
              "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
          realeseYear: "2019",
          rating: "PG-13",
          score: 7.7,
          durationTime: "2h 7m",
          generes: ["action", "drama", "fantasy"],
          actors: ["Al-pachino", "Robery de-niro"]),
      DummyMovieModel(
          image: "assets/images/background.png",
          poster: "assets/images/poster.png",
          title: "Dora and the lost city of gold",
          description:
              "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
          realeseYear: "2019",
          rating: "PG-13",
          score: 7.7,
          durationTime: "2h 7m",
          generes: ["action", "drama", "fantasy"],
          actors: ["Al-pachino", "Robery de-niro"],
          isWishListed: true),
      DummyMovieModel(
          image: "assets/images/background.png",
          poster: "assets/images/poster.png",
          title: "Dora and the lost city of gold",
          description:
              "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
          realeseYear: "2019",
          rating: "PG-13",
          score: 7.7,
          durationTime: "2h 7m",
          generes: ["action", "drama", "fantasy"],
          actors: ["Al-pachino", "Robery de-niro"]),
      DummyMovieModel(
          image: "assets/images/background.png",
          poster: "assets/images/poster.png",
          title: "Dora and the lost city of gold",
          description:
              "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
          realeseYear: "2019",
          rating: "PG-13",
          score: 7.7,
          durationTime: "2h 7m",
          generes: ["action", "drama", "fantasy"],
          actors: ["Al-pachino", "Robery de-niro"],
          isWishListed: true),
    ];
  }
}

List<DummyMovieModel> dummyMovieData = [
  DummyMovieModel(
      image: "assets/images/background.png",
      poster: "assets/images/poster.png",
      title: "Dora and the lost city of gold",
      description:
          "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
      realeseYear: "2019",
      rating: "PG-13",
      score: 7.7,
      durationTime: "2h 7m",
      generes: ["action", "drama", "fantasy", "war", "crime", "comedy"],
      actors: ["Al-pachino", "Robery de-niro"]),
  DummyMovieModel(
      image: "assets/images/background.png",
      poster: "assets/images/poster.png",
      title: "Dora and the lost city of gold",
      description:
          "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
      realeseYear: "2019",
      rating: "PG-13",
      score: 7.7,
      durationTime: "2h 7m",
      generes: ["action", "drama", "fantasy"],
      actors: ["Al-pachino", "Robery de-niro"],
      isWishListed: true),
  DummyMovieModel(
      image: "assets/images/background.png",
      poster: "assets/images/poster.png",
      title: "Dora and the lost city of gold",
      description:
          "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
      realeseYear: "2019",
      rating: "PG-13",
      score: 7.7,
      durationTime: "2h 7m",
      generes: ["action", "drama", "fantasy"],
      actors: ["Al-pachino", "Robery de-niro"]),
  DummyMovieModel(
      image: "assets/images/background.png",
      poster: "assets/images/poster.png",
      title: "Dora and the lost city of gold",
      description:
          "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
      realeseYear: "2019",
      rating: "PG-13",
      score: 7.7,
      durationTime: "2h 7m",
      generes: ["action", "drama", "fantasy"],
      actors: ["Al-pachino", "Robery de-niro"],
      isWishListed: true),
  DummyMovieModel(
      image: "assets/images/background.png",
      poster: "assets/images/poster.png",
      title: "Dora and the lost city of gold",
      description:
          "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
      realeseYear: "2019",
      rating: "PG-13",
      score: 7.7,
      durationTime: "2h 7m",
      generes: ["action", "drama", "fantasy"],
      actors: ["Al-pachino", "Robery de-niro"]),
  DummyMovieModel(
      image: "assets/images/background.png",
      poster: "assets/images/poster.png",
      title: "Dora and the lost city of gold",
      description:
          "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
      realeseYear: "2019",
      rating: "PG-13",
      score: 7.7,
      durationTime: "2h 7m",
      generes: ["action", "drama", "fantasy"],
      actors: ["Al-pachino", "Robery de-niro"],
      isWishListed: true),
  DummyMovieModel(
      image: "assets/images/background.png",
      poster: "assets/images/poster.png",
      title: "Dora and the lost city of gold",
      description:
          "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
      realeseYear: "2019",
      rating: "PG-13",
      score: 7.7,
      durationTime: "2h 7m",
      generes: ["action", "drama", "fantasy"],
      actors: ["Al-pachino", "Robery de-niro"]),
  DummyMovieModel(
      image: "assets/images/background.png",
      poster: "assets/images/poster.png",
      title: "Dora and the lost city of gold",
      description:
          "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
      realeseYear: "2019",
      rating: "PG-13",
      score: 7.7,
      durationTime: "2h 7m",
      generes: ["action", "drama", "fantasy"],
      actors: ["Al-pachino", "Robery de-niro"],
      isWishListed: true),
  DummyMovieModel(
      image: "assets/images/background.png",
      poster: "assets/images/poster.png",
      title: "Dora and the lost city of gold",
      description:
          "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
      realeseYear: "2019",
      rating: "PG-13",
      score: 7.7,
      durationTime: "2h 7m",
      generes: ["action", "drama", "fantasy"],
      actors: ["Al-pachino", "Robery de-niro"]),
  DummyMovieModel(
      image: "assets/images/background.png",
      poster: "assets/images/poster.png",
      title: "Dora and the lost city of gold",
      description:
          "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
      realeseYear: "2019",
      rating: "PG-13",
      score: 7.7,
      durationTime: "2h 7m",
      generes: ["action", "drama", "fantasy"],
      actors: ["Al-pachino", "Robery de-niro"],
      isWishListed: true),
];
