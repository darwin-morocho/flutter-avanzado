import 'package:flutter/material.dart';

class CryptoDetailView extends StatelessWidget {
  const CryptoDetailView({super.key, required this.cryptoId});
  final String cryptoId;

  static const routeName = 'cryptoDetail';
  static const routePath = '/crypto/:id';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(cryptoId),
      ),
    );
  }
}
