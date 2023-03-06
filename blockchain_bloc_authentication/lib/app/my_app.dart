import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'domain/repositories/auth_repository.dart';
import 'presentation/global/blocs/session/session_bloc.dart';
import 'presentation/global/blocs/session/session_events.dart';
import 'presentation/global/cubits/dark_mode/dark_mode_cubit.dart';
import 'presentation/modules/crypto_details/view/crypto_details_view.dart';
import 'presentation/modules/home/view/home_view.dart';
import 'presentation/modules/sign_in/view/sign_in_view.dart';

part 'presentation/auth_checker.dart';
part 'presentation/router.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with _RouterMixin, _AuthCheckerMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _init(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final darkMode = context.watch<DarkModeCubit>().state;
    if (_loading) {
      return const Material(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return MaterialApp.router(
      title: 'Blockchain',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: const ColorScheme.light(
          background: Colors.white,
        ),
        scaffoldBackgroundColor: const Color(0xffF2F5F8),
      ),
      darkTheme: ThemeData.dark(),
      themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
      routerConfig: _router,
    );
  }
}
