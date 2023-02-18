import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/global/cubits/dark_mode/dark_mode_cubit.dart';
import 'presentation/modules/home/view/home_view.dart';
import 'presentation/modules/sign_in/view/sign_in_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = context.watch<DarkModeCubit>().state;
    return MaterialApp(
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
      routes: {
        '/': (_) => const HomeView(),
        '/sign-in': (_) => const SignInView(),
      },
    );
  }
}
