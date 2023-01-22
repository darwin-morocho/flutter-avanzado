import 'package:flutter/material.dart';

class AnimatedView extends StatefulWidget {
  const AnimatedView({super.key});

  @override
  State<AnimatedView> createState() => _AnimatedViewState();
}

class _AnimatedViewState extends State<AnimatedView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 400,
      ),
    );
    _animation = TweenSequence<double>(
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
      _controller,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _controller.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (_, child) {
            return Transform.scale(
              scale: _animation.value,
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
        onPressed: _startAnimation,
        child: const Icon(
          Icons.play_arrow,
        ),
      ),
    );
  }
}
