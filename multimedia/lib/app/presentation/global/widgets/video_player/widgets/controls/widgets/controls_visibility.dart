import 'package:flutter/material.dart';

class ControlsVisibility extends StatelessWidget {
  const ControlsVisibility({
    super.key,
    required this.child,
    required this.visible,
    required this.begin,
  });

  final bool visible;
  final Widget child;
  final Offset begin;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      transitionBuilder: (child, animation) => FadeTransition(
        opacity: animation,
        child: SlideTransition(
          position: Tween<Offset>(
            begin: begin,
            end: Offset.zero,
          ).animate(
            animation,
          ),
          child: child,
        ),
      ),
      duration: const Duration(milliseconds: 300),
      child: visible ? child : const SizedBox.shrink(),
    );
  }
}
