import 'dart:convert';

import 'package:flutter/services.dart';

import '../../domain/models/user_model.dart';
import '../../domain/repositories/account_repository.dart';

class AccountRepositoryImpl implements AccountRepository {
  @override
  Future<User?> getProfile() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    final userAsString = await rootBundle.loadString('assets/jsons/user.json');
    final json = Map<String, dynamic>.from(
      jsonDecode(userAsString),
    );

    return User.fromJson(json);
  }
}
