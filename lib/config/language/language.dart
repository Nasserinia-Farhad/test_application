import 'package:get/get.dart';
import 'package:test_appliation/config/language/language_key.dart';

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          LanguageKey.email: "Email",
          LanguageKey.password: "Password",
          LanguageKey.confirmPassword: "Confirm password",
          LanguageKey.register: "Register",
          LanguageKey.verificationCode: "Verification Code",
        },
        'ir-IR': {},
      };
}
