import 'package:flutter/material.dart';

import 'views/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hooks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MenuView(),
      routes: appRoutes,
    );
  }
}
