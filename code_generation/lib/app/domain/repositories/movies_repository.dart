import '../models/movie_model.dart';

abstract class MoviesRepository {
  Future<List<Movie>?> getTopMovies();
}
