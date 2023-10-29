import 'package:get/get.dart';

mixin RegisterValidator {
  bool emailValidator({required String email}) {
    if (email.isNotEmpty && email.isEmail) {
      return true;
    } else {
      return false;
    }
  }

  bool isMatchPasswordWithConfirmPassword({
    required String password,
    required String confirmPassword,
  }) {
    if (password.isEmpty || confirmPassword.isEmpty) {
      return false;
    } else if (password == confirmPassword) {
      return true;
    } else {
      return false;
    }
  }
}
