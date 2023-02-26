import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class Movie with _$Movie {
  const Movie._();
  const factory Movie({
    required int id,
    required String title,
    required String overview,
    @JsonKey(name: 'poster_path') required String posterPath,
    @JsonKey(name: 'release_date') required DateTime releaseDate,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'genre_ids') required List<int> genreIds,
  }) = _Movie;

  String formattedDate() => '${releaseDate.day}/${releaseDate.month}';

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
