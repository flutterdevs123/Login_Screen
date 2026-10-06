import 'package:dummy/healthcare_view/view_model/dashboard_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../res/components/custom_bottom_bar.dart';
import '../res/components/custom_doctor_card.dart';


class HealthCareDoctorsScreen extends StatelessWidget {
  HealthCareDoctorsScreen({super.key});

  final DashboardController controller  = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      width: 2,
                      color: Color(0xFFC1C6D5),
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        width: 2,
                        color: Color(0xFFC1C6D5),
                      )
                  ),
                  hintText: "Search doctors or speciality",
                  hintStyle: GoogleFonts.inter(
                    color: Color(0xFF6B7280),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                  prefixIcon: Icon(Icons.person_search, color: Color(0xFFC1C6D5),),
                  suffixIcon: Icon(Icons.tune, color: Color(0xFF005AB6),),
                ),
              ),
              const SizedBox(height: 5,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF2F80ED),
                          ),
                          child: Text("All", style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),)),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      height: 40,
                      child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFDEE9FC),
                          ),
                          child: Text("Cardiologist", style: GoogleFonts.inter(
                            color: Color(0xFF414753),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),)),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      height: 40,
                      child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFDEE9FC),
                          ),
                          child: Text("Orthopedic", style: GoogleFonts.inter(
                            color: Color(0xFF414753),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Available Doctors", style: GoogleFonts.inter(
                    color: Color(0xFF121C2A),
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),),
                  Text("8 Found", style: GoogleFonts.inter(
                    color: Color(0xFF2F80ED),
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                  ),),
                ],
              ),
              const SizedBox(height: 10,),
              DoctorCard(
                doctorName: "Dr. Sara Malik",
                specialization: "Cardiologist",
                rating: "4.8",
                experience: "10+ Years Exp.",
                qualification: "MBBS, FCPS",
                fee: "Rs. 1500",
                imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPINg0aPFoGM4datdRr7YnLYpN8hgVbd5Yx6GdG6jJzg&s=10",
                onBookNow: () {},
                onTap: () {},
              ),
              const SizedBox(height: 10,),
              DoctorCard(
                doctorName: "Dr. Ali Raza",
                specialization: "General physician",
                rating: "4.82",
                experience: "8+ Years Exp.",
                qualification: "MBBS, FCPS",
                fee: "Rs. 1000",
                imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYVAicJy_tltg19cGh1eqX80EfSRhCEvwiarZWJdP27A&s=10",
                onBookNow: () {},
                onTap: () {},
              ),
              const SizedBox(height: 10,),
              DoctorCard(
                doctorName: "Dr. Usman Khan",
                specialization: "Orthopedic Surgeon",
                rating: "4.6",
                experience: "12+ Years Exp.",
                qualification: "MBBS, FCPS",
                fee: "Rs. 1500",
                imageUrl: "data:image/jpeg;base64,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",
                onBookNow: () {},
                onTap: () {},
              ),
            ],
          ),
          )),
      bottomNavigationBar: Obx(() => CustomBottomBar(
        currentIndex: controller.selectedIndex.value,
        onTap: (index) {
          controller.changeIndex(index);
        },
      )),
    );
  }
}
