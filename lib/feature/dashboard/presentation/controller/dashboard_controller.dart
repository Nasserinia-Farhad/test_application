import 'package:get/get.dart';

class DashboardController extends GetxController {
  RxInt index = RxInt(0);

  void changeIndex(int currentIndex) {
    index.value = currentIndex;
  }
}
