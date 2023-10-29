import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_appliation/feature/dashboard/presentation/controller/dashboard_controller.dart';
import 'package:test_appliation/feature/dummy_pages/dummy_page1.dart';
import 'package:test_appliation/feature/dummy_pages/dummy_page2.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.index.value,
          children: const [
            DummyPage1(),
            DummyPage2(),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.index.value,
          onTap: (int currentIndex) => controller.changeIndex(currentIndex),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Dummy page 1'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Dummy page 2'),
          ],
        ),
      ),
    );
  }
}
