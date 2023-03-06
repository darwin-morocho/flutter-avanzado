import '../models/user/user.dart';
import '../typedefs.dart';

abstract class AuthRepository {
  Future<bool> get isSignedIn;
  Future<void> signOut();
  HttpFuture<User> getUser();
  HttpFuture<User> signIn(String email, String password);
}
