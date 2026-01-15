import 'package:flutter_application_1/features/auth/domain/repositories/auth_repository.dart';

class LogoutWithGoogle {
  final AuthRepository repository;

  LogoutWithGoogle(this.repository);

  Future<void> call() {
    return repository.logoutWithGoogle();
  }
}
