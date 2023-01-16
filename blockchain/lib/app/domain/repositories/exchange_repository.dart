import '../results/get_prices/get_prices_result.dart';

abstract class ExchangeRepositotory {
  Future<GetPricesResult> getPrices(String ids);
}
