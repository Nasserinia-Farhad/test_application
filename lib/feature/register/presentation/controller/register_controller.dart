import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_appliation/feature/register/data/model/request_model.dart/register_requester.dart';
import 'register_validator.dart';

class RegisterController extends GetxController with RegisterValidator {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool onPressedRegisterButton({required RegisterRequester requester}) {
    bool isValidEmail = emailValidator(email: requester.email);
    bool isMatchPasswords = isMatchPasswordWithConfirmPassword(
      password: requester.password,
      confirmPassword: requester.confirmPassword,
    );
    if (isValidEmail && isMatchPasswords) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}
