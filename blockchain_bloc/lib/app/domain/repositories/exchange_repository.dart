import '../typedefs.dart';

abstract class ExchangeRepository {
  HttpFuture getPrices(List<String> ids);
}
