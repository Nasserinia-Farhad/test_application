import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../config/language/language_key.dart';
import '../../controller/register_controller.dart';

class EmailTextField extends GetView<RegisterController> {
  const EmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.emailController,
      decoration: InputDecoration(label: Text(LanguageKey.email.tr)),
    );
  }
}
