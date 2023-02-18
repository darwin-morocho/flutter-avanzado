import '../models/user/user.dart';
import '../typedefs.dart';

abstract class AuthRepository {
  HttpFuture<User> signIn(String email, String password);
}
