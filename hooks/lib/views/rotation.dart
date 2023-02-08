import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../hooks/rotation_hook.dart';
import '../hooks/timer_hook.dart';

class RotationView extends HookWidget {
  const RotationView({super.key});

  @override
  Widget build(BuildContext context) {
    useRotationListener(
      (orientation) {
        print(orientation);
      },
    );
    final counter = useTimer(
      const Duration(seconds: 1),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rotation listener'),
      ),
      body: Center(
        child: Text('$counter'),
      ),
    );
  }
}
