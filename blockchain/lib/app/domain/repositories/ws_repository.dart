abstract class WsRepository {
  Future<bool> connect();
  Future<void> disconnect();
}
