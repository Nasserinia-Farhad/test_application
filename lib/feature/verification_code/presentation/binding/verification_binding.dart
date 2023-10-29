import 'package:get/get.dart';
import 'package:test_appliation/feature/verification_code/presentation/controller/verification_controller.dart';

class VerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationController());
  }
}
