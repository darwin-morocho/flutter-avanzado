import '../models/crypto/crypto.dart';
import '../typedefs.dart';

abstract class ExchangeRepository {
  HttpFuture<List<Crypto>> getPrices(List<String> ids);
}
