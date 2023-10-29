import 'package:get/get.dart';

mixin AuthNavigator {
  void navigateTo({required String name, dynamic arguments, Bindings? binding}) {
    Get.toNamed(
      name,
      arguments: arguments,
    );
  }

  void navigateOffAllNamed({required String name, dynamic arguments, Bindings? binding}) {
    Get.offAllNamed(
      name,
      arguments: arguments,
    );
  }
}
