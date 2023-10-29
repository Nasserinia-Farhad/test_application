import 'package:get/get.dart';
import '../../core/network_info/dio_client_service/dio_client_service.dart';

class DependencyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DioClientService());
  }
}
