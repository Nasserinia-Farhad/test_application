import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/register_controller.dart';
import 'widget/widget.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: context.height,
        width: context.width,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: const Column(
          children: [
            SizedBox(height: 16.0),
            EmailTextField(),
            SizedBox(height: 16.0),
            PasswordTextField(),
            SizedBox(height: 16.0),
            ConfirmPasswordTextField(),
            SizedBox(height: 32.0),
            RegisterButton(),
          ],
        ),
      ),
    );
  }
}
