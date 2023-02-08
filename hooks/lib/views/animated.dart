import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AnimatedView extends HookWidget {
  const AnimatedView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(
        milliseconds: 400,
      ),
    );

    final animation = TweenSequence<double>(
      [
        TweenSequenceItem(
          tween: Tween(begin: 1.0, end: 1.8),
          weight: 0.5,
        ),
        TweenSequenceItem(
          tween: Tween(begin: 1.8, end: 1.0),
          weight: 0.5,
        ),
      ],
    ).animate(
      controller,
    );

    void startAnimation() {
      controller.forward(from: 0);
    }

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: AnimatedBuilder(
          animation: animation,
          builder: (_, child) {
            return Transform.scale(
              scale: animation.value,
              child: child!,
            );
          },
          child: const Icon(
            Icons.favorite,
            color: Colors.redAccent,
            size: 60,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: startAnimation,
        child: const Icon(
          Icons.play_arrow,
        ),
      ),
    );
  }
}
