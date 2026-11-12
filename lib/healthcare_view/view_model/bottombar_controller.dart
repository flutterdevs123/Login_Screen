import 'package:dummy/healthcare_view/view/appointments_screen.dart';
import 'package:dummy/healthcare_view/view/dashboard_screen.dart';
import 'package:dummy/healthcare_view/view/doctors_screen.dart';
import 'package:dummy/healthcare_view/view/profile_screen.dart';
import 'package:dummy/healthcare_view/view/support_screen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class BottombarController extends GetxController {
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  Widget buildScreens() {
    if (selectedIndex.value == 0) {
      return HealthCareDashboard();
    } else if (selectedIndex.value == 1) {
      return HealthCareDoctorsScreen();
    } else if (selectedIndex.value == 2) {
      return CalendarScreen();
    } else if (selectedIndex.value == 3) {
      return SupportScreen();
    } else{
      return ProfileScreen();
}         }
}