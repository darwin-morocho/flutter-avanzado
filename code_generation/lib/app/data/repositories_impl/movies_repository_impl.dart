import 'dart:convert';

import 'package:flutter/services.dart';

import '../../domain/models/movie_model.dart';
import '../../domain/repositories/movies_repository.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  @override
  Future<List<Movie>?> getTopMovies() async {
    final moviesAsString = await rootBundle.loadString(
      'assets/jsons/movies.json',
    );
    final json = Map<String, dynamic>.from(
      jsonDecode(moviesAsString),
    );
    final movies = (json['results'] as List).map(
      (e) => Movie.fromJson(e),
    );
    return movies.toList();
  }
}
