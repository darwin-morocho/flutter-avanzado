import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityView extends StatefulWidget {
  const ConnectivityView({super.key});

  @override
  State<ConnectivityView> createState() => _ConnectivityViewState();
}

class _ConnectivityViewState extends State<ConnectivityView> {
  StreamSubscription? _subscription;
  late ConnectivityResult _result;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );
    final connectivity = Connectivity();
    _result = await connectivity.checkConnectivity();
    _subscription = connectivity.onConnectivityChanged.listen(
      (result) {
        setState(() {
          _result = result;
        });
      },
    );
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: () {
          if (_subscription == null) {
            return const CircularProgressIndicator();
          }
          return Text(_result.name);
        }(),
      ),
    );
  }
}
