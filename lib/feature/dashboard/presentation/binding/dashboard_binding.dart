import 'package:get/get.dart';
import 'package:test_appliation/feature/dashboard/presentation/controller/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
  }
}
