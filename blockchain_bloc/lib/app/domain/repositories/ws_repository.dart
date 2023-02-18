import '../models/ws_status/ws_status.dart';

abstract class WsRepository {
  Future<bool> connect(List<String> ids);
  Stream<Map<String, double>> get onPricesChanged;
  Stream<WsStatus> get onStatusChanged;
  Future<void> disconnect();
}
