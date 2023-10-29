import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_appliation/feature/register/presentation/controller/register_controller.dart';

import '../../../../../config/language/language_key.dart';

class ConfirmPasswordTextField extends GetView<RegisterController> {
  const ConfirmPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.confirmPasswordController,
      decoration: InputDecoration(label: Text(LanguageKey.confirmPassword.tr)),
    );
  }
}
