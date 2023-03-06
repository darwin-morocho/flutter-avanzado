import '../../../domain/models/user/user.dart';
import '../../http/http.dart';

class AuthAPI {
  final Http _http;

  AuthAPI(this._http);

  Future<HttpResult<String>> signIn(String email, String password) {
    return _http.send(
      '/api/login',
      method: HttpMethod.post,
      parser: (_, json) => json['token'] as String,
      body: {
        'email': email,
        'password': password,
      },
    );
  }

  Future<HttpResult<User>> getUser() {
    return _http.send(
      '/api/users/12',
      parser: (_, json) => User.fromJson(
        json['data'],
      ),
    );
  }
}
