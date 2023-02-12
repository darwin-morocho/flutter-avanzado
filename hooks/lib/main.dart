import 'package:flutter/material.dart';

import 'routes.dart';
import 'views/animated.dart';
import 'views/connectivity.dart';
import 'views/counter.dart';
import 'views/future.dart';
import 'views/home.dart';
import 'views/rotation.dart';
import 'views/search.dart';
import 'views/sign_in.dart';
import 'views/splash.dart';
import 'views/switcher.dart';
import 'views/tabs.dart';

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
      home: const FutureView(),
      routes: appRoutes,
    );
  }
}

Map<String, WidgetBuilder> get appRoutes {
  return {
    Routes.counter: (_) => const CounterView(),
    Routes.home: (_) => const HomeView(),
    Routes.splash: (_) => const SplashView(),
    Routes.switcher: (_) => const SwitcherView(),
    Routes.tabs: (_) => const TabsView(),
    Routes.signIn: (_) => const SignInView(),
    Routes.animated: (_) => const AnimatedView(),
    Routes.search: (_) => const SearchView(),
    Routes.connectivity: (_) => const ConnectivityView(),
    Routes.rotation: (_) => const RotationView(),
  };
}

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Hooks'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ...appRoutes.entries.map(
              (e) => ListTile(
                onTap: () => Navigator.pushNamed(
                  context,
                  e.key,
                ),
                title: Text(
                  e.key,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
