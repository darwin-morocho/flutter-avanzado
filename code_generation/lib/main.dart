import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/data/repositories_impl/account_repository_impl.dart';
import 'app/data/repositories_impl/movies_repository_impl.dart';
import 'app/domain/repositories/account_repository.dart';
import 'app/domain/repositories/movies_repository.dart';
import 'app/presentation/modules/account/view/account_view.dart';
import 'app/presentation/modules/movies/view/movies_view.dart';
import 'app/presentation/modules/pokemon/view/pokemon_view.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<MoviesRepository>(
          create: (_) => MoviesRepositoryImpl(),
        ),
        Provider<AccountRepository>(
          create: (_) => AccountRepositoryImpl(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

Map<String, WidgetBuilder> get _routes {
  return {
    '/pokemon': (_) => const PokemonView(),
    '/account': (_) => const AccountView(),
    '/movies': (_) => const MoviesView(),
  };
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: _routes,
      home: Scaffold(
        body: Builder(
          builder: (context) {
            final keys = _routes.keys;
            return ListView.builder(
              itemBuilder: (_, index) {
                final key = keys.elementAt(index);
                return ListTile(
                  onTap: () => Navigator.pushNamed(
                    context,
                    key,
                  ),
                  title: Text(key),
                );
              },
              itemCount: keys.length,
            );
          },
        ),
      ),
    );
  }
}
