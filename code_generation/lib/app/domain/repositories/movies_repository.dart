import '../models/movie.dart';

abstract class MoviesRepository {
  Future<List<Movie>?> getTopMovies();
}
