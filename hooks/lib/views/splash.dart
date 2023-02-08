import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../routes.dart';

class SplashView extends HookWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final mountedFn = useIsMounted();
    useEffect(
      () {
        Future<void> init() async {
          await Future.delayed(
            const Duration(seconds: 1),
          );
          final mounted = mountedFn();
          if (mounted) {
            Navigator.pushReplacementNamed(
              context,
              Routes.home,
            );
          }
        }

        WidgetsBinding.instance.addPostFrameCallback(
          (_) => init(),
        );
        return () {
          print('🥶');
        };
      },
      [],
    );

    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
