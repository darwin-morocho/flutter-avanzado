import '../either/either.dart';
import '../failures/http_request_failure.dart';
import '../models/crypto/crypto.dart';

typedef GetPricesFuture = Future<Either<HttpRequestFailure, List<Crypto>>>;

abstract class ExchangeRepository {
  GetPricesFuture getPrices(List<String> ids);
}
