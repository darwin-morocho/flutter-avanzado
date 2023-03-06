import '../../domain/either/either.dart';
import '../../domain/models/user/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/typedefs.dart';
import '../services/local/auth_service.dart';
import '../services/remote/auth_api.dart';
import '../utils.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthAPI _api;
  final AuthService _authService;

  AuthRepositoryImpl(this._api, this._authService);

  @override
  HttpFuture<User> signIn(String email, String password) async {
    final result = await performHttpRequest(
      _api.signIn(email, password),
    );

    return result.when(
      left: (failure) async => Either.left(failure),
      right: (token) async {
        await _authService.saveToken(token);
        return performHttpRequest(
          _api.getUser(),
        );
      },
    );
  }

  @override
  Future<bool> get isSignedIn async {
    final token = await _authService.accessToken;
    return token != null;
  }

  @override
  HttpFuture<User> getUser() {
    return performHttpRequest(
      _api.getUser(),
    );
  }

  @override
  Future<void> signOut() {
    return _authService.deleteAll();
  }
}
