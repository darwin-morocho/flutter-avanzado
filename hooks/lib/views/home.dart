import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../dialogs/confirm.dart';
import '../main.dart';

class HomeView extends HookWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final mountedFn = useIsMounted();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final ok = await showConfirmDialog(context);
            final mounted = mountedFn();
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
