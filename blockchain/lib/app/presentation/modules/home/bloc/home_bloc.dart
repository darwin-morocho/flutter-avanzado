import 'package:flutter/foundation.dart';

import '../../../../domain/repositories/exchange_repository.dart';
import '../../../../domain/repositories/ws_repository.dart';

class HomeBloc extends ChangeNotifier {
  HomeBloc({
    required WsRepository wsRepository,
    required ExchangeRepository exchangeRepositotory,
  })  : _ws = wsRepository,
        _exchange = exchangeRepositotory;

  final WsRepository _ws;
  final ExchangeRepository _exchange;
}
