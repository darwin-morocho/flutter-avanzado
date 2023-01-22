import 'package:flutter/material.dart';

import '../routes.dart';
import 'connectivity.dart';
import 'home.dart';
import 'splash.dart';
import 'tabs.dart';

Map<String, WidgetBuilder> get appRoutes {
  return {
    Routes.splash: (_) => const SplashView(),
    Routes.home: (_) => const HomeView(),
    Routes.tabs: (_) => const TabsView(),
    Routes.connectivity: (_) => const ConnectivityView(),
  };
}

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
