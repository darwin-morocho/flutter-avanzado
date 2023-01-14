import 'package:blockchain/app/domain/models/crypto/crypto.dart';
import 'package:flutter/foundation.dart';

abstract class HomeState {}

class HomeStateLoading extends HomeState {}

class HomeStateFailed extends HomeState {}

class HomeStateLoaded extends HomeState {
  HomeStateLoaded(this.cryptos);

  final Map<String, Crypto> cryptos;

  @override
  int get hashCode {
    int _ = 0;
    for (final e in cryptos.entries) {
      _ += e.key.hashCode + e.value.hashCode;
    }
    return _;
  }

  @override
  bool operator ==(Object other) {
    if (other is HomeStateLoaded) {
      return mapEquals(cryptos, other.cryptos);
    }

    return false;
  }
}
