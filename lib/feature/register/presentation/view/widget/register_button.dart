import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_appliation/config/navigator/auth_navigator.dart';
import 'package:test_appliation/config/snackbar/custom_snackbar.dart';
import 'package:test_appliation/feature/register/data/model/request_model.dart/register_requester.dart';

import '../../../../../config/color_pallet/color_pallet.dart';
import '../../../../../config/language/language_key.dart';
import '../../../../../config/routes_management/routes.dart';
import '../../controller/register_controller.dart';

class RegisterButton extends GetView<RegisterController> with AuthNavigator {
  const RegisterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        // variables
        String email = controller.emailController.value.text.toString();
        String password = controller.passwordController.value.text.toString();
        String confirmPassword = controller.confirmPasswordController.value.text.toString();
        // fill model
        RegisterRequester requester = RegisterRequester(
          email: email,
          password: password,
          confirmPassword: confirmPassword,
        );
        bool result = controller.onPressedRegisterButton(requester: requester);
        result ? navigateTo(name: Routes.verificationCode) : CustomSnackBar.failSnackbar();
      },
      color: ColorPallet.green,
      minWidth: context.width * 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Text(LanguageKey.register.tr),
    );
  }
}
