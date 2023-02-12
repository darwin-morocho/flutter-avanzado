import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FutureView extends HookWidget {
  const FutureView({super.key});

  @override
  Widget build(BuildContext context) {
    final ref = useState(0);
    final future = useMemoized(
      () => Future.delayed(
        const Duration(seconds: 2),
      ),
      [ref.value],
    );

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.value++;
        },
      ),
      body: Center(
        child: FutureBuilder(
          future: future,
          builder: (_, snapshot) =>
              snapshot.connectionState == ConnectionState.waiting
                  ? const CircularProgressIndicator()
                  : const Text('HELLO'),
        ),
      ),
    );
  }
}
