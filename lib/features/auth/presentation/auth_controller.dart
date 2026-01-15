
import 'package:flutter_application_1/features/auth/domain/usecases/login_with_google.dart';
import 'package:flutter_application_1/features/auth/domain/usecases/logout_with_google.dart';

class AuthController {
  final LoginWithGoogle loginWithGoogle;
  final LogoutWithGoogle logoutWithGoogle;

  AuthController(this.loginWithGoogle, this.logoutWithGoogle);

  Future<void> login() async {
    await loginWithGoogle();
  }
  
  Future<void> loggout() async {
    await logoutWithGoogle();
  }
}
