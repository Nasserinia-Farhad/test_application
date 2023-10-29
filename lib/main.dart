import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:test_appliation/config/routes_management/pages_management.dart';
import 'package:test_appliation/config/routes_management/routes.dart';

import 'config/dependency/dependency.dart';
import 'config/language/language.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: DependencyBinding(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      translations: Language(),
      getPages: Pages.pages,
      initialRoute: Routes.register,
      onInit: () async {
        await GetStorage.init();
      },
    );
  }
}
