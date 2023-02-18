import '../../domain/repositories/exchange_repository.dart';
import '../../domain/typedefs.dart';
import '../services/remote/exchage_api.dart';

class ExchangeRepositoryImpl implements ExchangeRepository {
  final ExchangeAPI _api;

  ExchangeRepositoryImpl(this._api);

  @override
  HttpFuture getPrices(List<String> ids) {
    return _api.getPrices(ids);
  }
}
