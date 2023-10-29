import 'package:get/get.dart';
import 'package:test_appliation/feature/dashboard/presentation/binding/dashboard_binding.dart';
import 'package:test_appliation/feature/dashboard/presentation/view/dashboard_view.dart';
import 'package:test_appliation/feature/register/presentation/binding/register_binding.dart';
import 'package:test_appliation/feature/register/presentation/view/register_view.dart';
import 'package:test_appliation/feature/verification_code/presentation/binding/verification_binding.dart';
import 'package:test_appliation/feature/verification_code/presentation/view/verification_code_view.dart';
import 'routes.dart';

class Pages {
  static final pages = <GetPage>[
    // register
    GetPage(
      name: Routes.register,
      binding: RegisterBinding(),
      page: () => const RegisterView(),
    ),
    GetPage(
      name: Routes.verificationCode,
      binding: VerificationBinding(),
      page: () => const VerificationCodeView(),
    ),
    GetPage(
      name: Routes.dashboard,
      binding: DashboardBinding(),
      page: () => const DashboardView(),
    ),
  ];
}
