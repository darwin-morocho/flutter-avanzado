import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto.freezed.dart';

@freezed
class Crypto with _$Crypto {
  factory Crypto({
    required String id,
    required String symbol,
    required String name,
    required double price,
    required double changePercent24Hr,
  }) = _Crypto;
}
