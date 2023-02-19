class Movie {
  final int id;
  final String title;
  final String overview;
  final String posterPath;
  final DateTime releaseDate;
  final double voteAverage;

  Movie({
    required this.id,
    required this.title,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.voteAverage,
  });
}
