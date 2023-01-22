import 'package:flutter/material.dart';

class RotationView extends StatefulWidget {
  const RotationView({super.key});

  @override
  State<RotationView> createState() => _RotationViewState();
}

class _RotationViewState extends State<RotationView>
    with WidgetsBindingObserver {
  bool _listen = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _listen = true,
    );
  }

  @override
  void deactivate() {
    print('❌ deactivate');
    WidgetsBinding.instance.removeObserver(this);
    _listen = false;
    super.deactivate();
  }

  @override
  void dispose() {
    print('❌');
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    if (_listen) {
      final size = WidgetsBinding.instance.window.physicalSize;
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
