import 'package:flutter/foundation.dart';

import '../../../../domain/repositories/exchange_repository.dart';
import '../../../../domain/repositories/ws_repository.dart';

class HomeBloc extends ChangeNotifier {
  HomeBloc({
    required WsRepository wsRepository,
    required ExchangeRepositotory exchangeRepositotory,
  })  : _ws = wsRepository,
        _exchange = exchangeRepositotory;

  final WsRepository _ws;
  final ExchangeRepositotory _exchange;
}
