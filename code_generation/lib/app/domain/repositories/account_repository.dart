import '../models/user_model.dart';

abstract class AccountRepository {
  Future<User?> getProfile();
}
