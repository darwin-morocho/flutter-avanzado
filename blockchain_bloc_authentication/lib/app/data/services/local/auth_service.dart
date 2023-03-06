import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  final FlutterSecureStorage _secureStorage;

  AuthService(this._secureStorage);

  Future<String?> get accessToken {
    return _secureStorage.read(key: 'token');
  }

  Future<void> saveToken(String token) {
    return _secureStorage.write(
      key: 'token',
      value: token,
    );
  }

  Future<void> deleteAll() {
    return _secureStorage.deleteAll();
  }
}
