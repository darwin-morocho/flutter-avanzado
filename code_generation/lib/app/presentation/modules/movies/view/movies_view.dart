import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../domain/models/movie.dart';
import '../../../../domain/repositories/movies_repository.dart';

class MoviesView extends StatefulWidget {
  const MoviesView({super.key});

  @override
  State<MoviesView> createState() => _MoviesViewState();
}

class _MoviesViewState extends State<MoviesView> {
  late final Future<List<Movie>?> _future;

  @override
  void initState() {
    super.initState();
    _future = context.read<MoviesRepository>().getTopMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FutureBuilder(
          future: _future,
          builder: (_, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }
            final movies = snapshot.data;

            if (movies != null) {
              return GridView.builder(
                itemBuilder: (_, index) {
                  return Text('$index');
                },
                itemCount: movies.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
              );
            }

            return Text(
              snapshot.error.toString(),
            );
          },
        ),
      ),
    );
  }
}
