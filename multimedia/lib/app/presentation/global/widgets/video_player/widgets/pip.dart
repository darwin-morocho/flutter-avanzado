import 'package:flutter/material.dart';

class Pip extends StatefulWidget {
  const Pip({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  State<Pip> createState() => _PipState();
}

class _PipState extends State<Pip> {
  double _dx = 10, _dy = 50, _childHeight = 20;
  final _childKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _getChildHeight(),
    );
  }

  void _getChildHeight() {
    final box = _childKey.currentContext?.findRenderObject() as RenderBox;
    setState(() {
      _childHeight = box.size.height;
    });
  }

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    final size = data.size;

    return Positioned(
      bottom: _dy.clamp(
        data.padding.bottom + 10,
        size.height - data.padding.top - _childHeight - 10,
      ),
      left: _dx.clamp(10, size.width - 130),
      width: 120,
      child: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            _dy -= details.delta.dy;
            _dx += details.delta.dx;
          });
        },
        child: SizedBox(
          key: _childKey,
          child: widget.child,
        ),
      ),
    );
  }
}
