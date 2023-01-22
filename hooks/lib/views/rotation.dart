import 'package:flutter/material.dart';

class RotationView extends StatefulWidget {
  const RotationView({super.key});

  @override
  State<RotationView> createState() => _RotationViewState();
}

class _RotationViewState extends State<RotationView>
    with WidgetsBindingObserver {
  ///
  Size _size = WidgetsBinding.instance.window.physicalSize;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    final size = WidgetsBinding.instance.window.physicalSize;
    if (_size != size) {
      _size = size;
      final isPortraitMode = size.width < size.height;
      print('🥶 isPortraitMode $isPortraitMode');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rotation listener'),
      ),
    );
  }
}
