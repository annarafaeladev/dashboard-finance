

import 'package:flutter_application_1/features/auth/domain/entities/user.dart';

abstract class AuthRepository {
  Future<User> loginWithGoogle();
  Future<void> logoutWithGoogle();
}
