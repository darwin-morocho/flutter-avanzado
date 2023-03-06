import '../../../domain/models/crypto/crypto.dart';
import '../../http/http.dart';

class ExchangeAPI {
  final Http _http;

  ExchangeAPI(this._http);

  Future<HttpResult<List<Crypto>>> getPrices(List<String> ids) {
    return _http.send(
      '/v2/assets',
      queryParameters: {
        'ids': ids.join(','),
      },
      parser: (_, json) {
        return (json['data'] as List)
            .map(
              (e) => Crypto.fromJson(e),
            )
            .toList();
      },
    );
  }
}
