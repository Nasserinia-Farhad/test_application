import 'package:get/get.dart';
import 'package:test_appliation/feature/register/presentation/controller/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController());
  }
}
