import '../../domain/either/either.dart';
import '../../domain/failures/http_request_failure.dart';
import '../../domain/models/user/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/typedefs.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  HttpFuture<User> signIn(String email, String password) async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    if (email == 'test@test.com' && password == 'Test123') {
      return Either.right(
        User(
          id: 123,
          name: 'Darwin Morocho',
          avatar: null,
        ),
      );
    }

    return Either.left(
      HttpRequestFailure.unauthorized(),
    );
  }
}
