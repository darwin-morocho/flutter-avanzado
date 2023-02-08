import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ConnectivityView extends HookWidget {
  const ConnectivityView({super.key});

  @override
  Widget build(BuildContext context) {
    final future = useMemoized(
      () async {
        await Future.delayed(
          const Duration(milliseconds: 1000),
        );
        return Connectivity().checkConnectivity();
      },
    );

    final snapshot = useFuture(future);

    final stream = useMemoized(
      () => Connectivity().onConnectivityChanged,
    );

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: snapshot.connectionState == ConnectionState.waiting
            ? const CircularProgressIndicator()
            : StreamBuilder(
                stream: stream,
                initialData: snapshot.data,
                builder: (_, snapshot) => Text(
                  snapshot.data?.name ?? '',
                  style: const TextStyle(fontSize: 25),
                ),
              ),
      ),
    );
  }
}
