import 'package:get/get.dart';

import '../color_pallet/color_pallet.dart';

class CustomSnackBar {
  static SnackbarController failSnackbar() {
    return Get.snackbar(
      'Error',
      'Something was wrong',
      backgroundColor: ColorPallet.red,
    );
  }
}
