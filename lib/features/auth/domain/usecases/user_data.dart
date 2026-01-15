import 'package:flutter_application_1/features/auth/domain/entities/user.dart';
import 'package:flutter_application_1/features/auth/domain/repositories/user_repository.dart';

class UserData {
  final UserRepository repository;

  UserData(this.repository);

  Future<User?> call() {
    return repository.getUser();
  }
}
