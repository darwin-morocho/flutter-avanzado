import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/crypto/crypto.dart';
import '../../../../domain/models/ws_status/ws_status.dart';

part 'home_events.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  factory HomeEvent.initialize() = InitializeEvent;
  factory HomeEvent.updateWsStatus(WsStatus status) = UpdateWsStatusEvent;
  factory HomeEvent.updateCryptoPrices(
    Map<String, double> prices,
  ) = UpdateCryptoPricesEvent;
  factory HomeEvent.delete(Crypto crypto) = DeleteEvent;
}
