import '../../domain/models/movie.dart';
import '../../domain/repositories/movies_repository.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  @override
  Future<List<Movie>?> getTopMovies() async {
    return null;
  }
}
