import '../models/user.dart';

abstract class AccountRepository {
  Future<User?> getProfile();
}
