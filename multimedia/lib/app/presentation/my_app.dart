import 'package:flutter/material.dart';

import 'modules/home/view/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeView(),
      theme: ThemeData(
        fontFamily: 'Nunito',
      ),
    );
  }
}
