import 'dart:async';
import 'package:get/get.dart';

mixin CountDownTimer {
  RxString countDownTimerValue = RxString("2 : 00");
  int _timeValue = 2 * 60;
  Timer? timer;

  void startCountDownTimer() {
    _timeValue = 2 * 60;
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        if (_timeValue.isEqual(0)) {
          timer.cancel();
        } else {
          _timeValue--;
          formattedTime();
        }
      },
    );
  }

  void formattedTime() {
    int sec = _timeValue % 60;
    int min = (_timeValue / 60).floor();
    String minute = "$min";
    String second = sec.toString().length <= 1 ? "0$sec" : "$sec";

    if (second == "00" && minute == "0") {
      countDownTimerValue.value = '';
    } else {
      countDownTimerValue.value = "$minute : $second";
    }
  }
}
