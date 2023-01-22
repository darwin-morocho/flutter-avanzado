import 'package:flutter/material.dart';

import '../dialogs/confirm.dart';
import '../main.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final ok = await showConfirmDialog(context);
            if (ok && mounted) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (_) => const MenuView(),
                ),
                (_) => false,
              );
            }
          },
          child: const Text('Sign Out'),
        ),
      ),
    );
  }
}
