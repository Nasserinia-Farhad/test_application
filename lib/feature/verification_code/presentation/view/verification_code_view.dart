import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_appliation/config/color_pallet/color_pallet.dart';
import 'package:test_appliation/config/language/language_key.dart';
import 'package:test_appliation/config/navigator/auth_navigator.dart';
import 'package:test_appliation/config/routes_management/routes.dart';
import 'package:test_appliation/feature/verification_code/presentation/controller/verification_controller.dart';

class VerificationCodeView extends GetView<VerificationController> with AuthNavigator {
  const VerificationCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LanguageKey.verificationCode.tr)),
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(),
            ),
            Obx(
              () => Container(
                height: 30.0,
                width: 90.0,
                decoration: BoxDecoration(
                  color: ColorPallet.green,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(child: Text(controller.countDownTimerValue.value)),
              ),
            ),
            MaterialButton(
              onPressed: () => navigateOffAllNamed(name: Routes.dashboard),
              child: const Text("Go to dashboard"),
            )
          ],
        ),
      ),
    );
  }
}
