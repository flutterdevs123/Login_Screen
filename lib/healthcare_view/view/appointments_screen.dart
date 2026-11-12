import 'package:dummy/healthcare_view/view/api_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:get/get.dart';
import 'api_screen.dart';

class CalendarScreen extends StatelessWidget {
  CalendarScreen({super.key});

  // // Jo din select hoga wo yahan save hoga
  // Rx<DateTime> selectedDay = DateTime.now().obs;
  // Rx<DateTime> focusedDay = DateTime.now().obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Calendar", style: GoogleFonts.poppins(color: Colors.blue)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime(2020),
            lastDay: DateTime(2030),
            focusedDay: DateTime.now(),

            // // Kaunsa din selected hai
            // selectedDayPredicate: (day) {
            //   return isSameDay(selectedDay.value, day);
            // },
            //
            // // Jab user kisi din par tap kare
            // onDaySelected: (selected, focused) {
            //   selectedDay.value = selected;
            //   focusedDay.value = focused;
            // },
            //
            // // Design
            // calendarStyle: const CalendarStyle(
            //   selectedDecoration: BoxDecoration(
            //     color: Colors.blue,
            //     shape: BoxShape.circle,
            //   ),
            //   todayDecoration: BoxDecoration(
            //     color: Colors.black26,
            //     shape: BoxShape.circle,
            //   ),
            // ),
            // headerStyle: const HeaderStyle(
            //   formatButtonVisible: false,
            //   titleCentered: true,
            // ),
          ),

          const SizedBox(height: 20),

          ElevatedButton(onPressed: (){Get.to(() => ApiScreen());}, child: Text("Go to Api's Screen.")),

          // Selected date screen par dikhana
          // Obx(() => Text(
          //   "Selected: ${selectedDay.value.day}/${selectedDay.value.month}/${selectedDay.value.year}",
          //   style: GoogleFonts.poppins(fontSize: 18, color: Colors.blue),
          // )),
        ],
      ),
    );
  }
}