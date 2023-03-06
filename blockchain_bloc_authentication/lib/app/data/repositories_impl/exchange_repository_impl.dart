import '../../domain/models/crypto/crypto.dart';
import '../../domain/repositories/exchange_repository.dart';
import '../../domain/typedefs.dart';
import '../services/remote/exchage_api.dart';
import '../utils.dart';

class ExchangeRepositoryImpl implements ExchangeRepository {
  final ExchangeAPI _api;

  ExchangeRepositoryImpl(this._api);

  @override
  HttpFuture<List<Crypto>> getPrices(List<String> ids) {
    return performHttpRequest(
      _api.getPrices(ids),
    );
  }
}
