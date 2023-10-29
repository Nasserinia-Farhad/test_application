import 'package:get/get.dart';
import 'package:test_appliation/config/count_down_timer/count_down_timer.dart';

class VerificationController extends GetxController with CountDownTimer {
  @override
  void onInit() {
    startCountDownTimer();
    super.onInit();
  }
}
