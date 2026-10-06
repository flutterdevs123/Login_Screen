import 'package:dummy/healthcare_view/view/dashboard_screen.dart';
import 'package:get/get.dart';

import '../view/doctors_screen.dart';

class DashboardController extends GetxController{
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;

    switch(index) {
      case 0: Get.to(() => HealthCareDashboard()); break;
      case 1: Get.to(() => HealthCareDoctorsScreen()); break;
      // case 2: Get.to(() => AppointmentsScreen()); break;
      // case 3: Get.to(() => SupportScreen()); break;
      // case 4: Get.to(() => ProfileScreen()); break;
    }
  }
}