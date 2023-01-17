import '../../domain/repositories/exchange_repository.dart';
import '../services/remote/exchage_api.dart';

class ExchangeRepositoryImpl implements ExchangeRepository {
  ExchangeRepositoryImpl(this._api);
  final ExchangeAPI _api;
}
