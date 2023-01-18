import '../../failures/http_request_failure.dart';
import '../../models/crypto/crypto.dart';

abstract class GetPricesResult {}

class GetPricesSuccess extends GetPricesResult {
  GetPricesSuccess(this.cryptos);

  final List<Crypto> cryptos;
}

class GetPricesFailure extends GetPricesResult {
  GetPricesFailure(this.failure);

  final HttpRequestFailure failure;
}
