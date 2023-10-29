import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../config/language/language_key.dart';
import '../../controller/register_controller.dart';

class PasswordTextField extends GetView<RegisterController> {
  const PasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.passwordController,
      decoration: InputDecoration(label: Text(LanguageKey.password.tr)),
    );
  }
}
