import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/data/repositories_impl/publications_repository_impl.dart';
import 'app/domain/repositories/publications_repository.dart';
import 'app/presentation/global/blocs/current_video/current_video_bloc.dart';
import 'app/presentation/my_app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<PublicationsRepository>(
          create: (_) => PublicationsRepositoryImpl(),
        ),
        ChangeNotifierProvider(
          create: (_) => CurrentVideoBloc(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
