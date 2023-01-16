import '../../domain/repositories/exchange_repository.dart';
import '../../domain/results/get_prices/get_prices_result.dart';
import '../services/remote/exchage_api.dart';

class ExchangeRepositoryImpl implements ExchangeRepositotory {
  ExchangeRepositoryImpl(this._api);

  final ExchangeAPI _api;

  @override
  Future<GetPricesResult> getPrices(String ids) {
    // TODO: implement getPrices
    throw UnimplementedError();
  }
}
