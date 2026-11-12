import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view_model/bottombar_controller.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final BottombarController controller = Get.put(BottombarController());

    return Scaffold(
      body: Obx(() => controller.buildScreens()),

      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.changeIndex,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person_search_outlined), label: "Doctors"),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month_sharp), label: "Appointments"),
            BottomNavigationBarItem(icon: Icon(Icons.message_outlined), label: "Messages"),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
          ],
        ),
      ),
    );
  }
}