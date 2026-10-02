import 'package:dummy/healthcare_view/res/components/custom_card.dart';
import 'package:dummy/healthcare_view/view_model/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class HealthCareDashboard extends StatelessWidget {
 const HealthCareDashboard({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFF8F9FF),
        leading: UnconstrainedBox(
          child: CircleAvatar(
            radius: 20,
            foregroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQqpZtnSObMs9DHmJbfxJhylBwXcL43SjzA2zP7jpr3A&s=10"),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Good Morning', style: GoogleFonts.inter(color: Color(0xFF414753), fontSize: 12, fontWeight: FontWeight.w500),),
            Text('Tayyab Khan', style: GoogleFonts.poppins(color: Color(0xFF2F80ED), fontSize: 18,fontWeight: FontWeight.w700),),
          ],
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFFDEE9FC),
            ),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none, size: 20, color: Color(0xFF2F80ED))),
          ),
          SizedBox(width: 10,)
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dr. info card
            Container(
              height: 230,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFF2F80ED),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Free Health Checkup.", style: GoogleFonts.inter(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600,),),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Book today and get", style: GoogleFonts.inter(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),),
                            Text("free BP screening ", style: GoogleFonts.inter(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),),
                            Text("at home.", style: GoogleFonts.inter(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),),
                          ],
                        ),
                        Container(
                          height: 85,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNm15-t7RWDG0LNdnPbdIy7nU8d4KIGTaE2-TDU5_Fww&s=10'), fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 36,
                          width: 146,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: (){},
                              borderRadius: BorderRadius.circular(12),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Book Now", style: GoogleFonts.inter(color: Color(0xFF2F80ED), fontWeight: FontWeight.w600, fontSize: 20),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            const SizedBox(height: 10,),
            Container(
              height: 185,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('DAILY STEP GOAL', style: GoogleFonts.plusJakartaSans(color: Color(0xFF64748B), fontSize: 14, fontWeight: FontWeight.w600),),
                      const SizedBox(width: 10,),
                      Container(
                        height: 21,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFBEB),
                          border: Border.all(width: 1, color: Color(0xFFFDE68A)),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.local_fire_department, color: Color(0xFFD97706), size: 15,),
                            Text('On Track', style: GoogleFonts.plusJakartaSans(color: Color(0xFFD97706), fontSize: 10, fontWeight: FontWeight.w600),),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('You are doing great! Keep it up.', style: GoogleFonts.plusJakartaSans(color: Color(0xFF64748B), fontSize: 12, fontWeight: FontWeight.w500),),
                          Row(
                            children: [
                              Text('6,432', style: GoogleFonts.plusJakartaSans(color: Color(0xFF2F80ED), fontSize: 24, fontWeight: FontWeight.w800),),
                              Text(' / 8,000 steps', style: GoogleFonts.plusJakartaSans(color: Color(0xFF94A3B8), fontSize: 14, fontWeight: FontWeight.w600),),
                            ],
                          ),

                        ],
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Color(0xFF2F80ED),
                              width: 5,
                            )
                        ),
                        child: Icon(Icons.directions_walk, size: 28, color: Color(0xFF2F80ED),),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    children: [
                      Container(
                        height: 27,
                        width: 73,
                        decoration: BoxDecoration(
                            color: Color(0xFFFFF1F2),
                            border: Border.all(width: 1, color: Color(0xFFFFE4E6)),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.favorite_outlined, color: Color(0xFFF43F5E), size: 14.5,),
                            Text(' 72 ', style: GoogleFonts.plusJakartaSans(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),),
                            Text('bpm', style: GoogleFonts.poppins(color: Color(0xFF64748B), fontSize: 12, fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Container(
                        height: 27,
                        width: 73,
                        decoration: BoxDecoration(
                            color: Color(0xFFFFFBEB),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.electric_bolt, color: Color(0xFFF59E0B), size: 14.5,),
                            Text('420 ', style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),),
                            Text('Kcal', style: GoogleFonts.poppins(color: Color(0xFF64748B), fontSize: 12 ,fontWeight: FontWeight.w400),),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Text("Quick Services", style: GoogleFonts.poppins(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCard(icon: Icons.home_outlined, iconColor: Color(0xFF1E60D5), iconBackgroundColor: Color(0xFFEFF6FF), textOne: "Home Care", textOneColor: Colors.black, textTwo: "Nurse and Meds", textTwoColor: Color(0xFF94A3B8), height: 109, width: 109),
                CustomCard(icon: Icons.menu_book, iconColor: Color(0xFF0891B2), iconBackgroundColor: Color(0xFFECFEFF), textOne: "Records", textOneColor: Colors.black, textTwo: "Reports & Rx", textTwoColor: Color(0xFF94A3B8), height: 109, width: 109),
                CustomCard(icon: Icons.emergency, iconColor: Color(0xFFEC1C24), iconBackgroundColor: Color(0xFFFFF1F2), textOne: "Emergency", textOneColor: Color(0xFFEC1C24), textTwo: "SOS 24/7", textTwoColor: Color(0xFFEC1C24), height: 109, width: 109)
              ],
            ),
            const SizedBox(height: 10,),
            Container(
              height: 82,
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFFE9F2FE),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 1,
                  color: Color(0xFFBFDBFE),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          border:Border.all(
                            width: 2,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(image: NetworkImage("data:image/jpeg;base64,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"),fit: BoxFit.contain),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Need Help?", style: GoogleFonts.plusJakartaSans(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 14),),
                          Text("Support is here for 24/7", style: GoogleFonts.poppins(color: Color(0xFF64748B), fontSize: 12, fontWeight: FontWeight.w400),),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 36,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Color(0xFF2F80ED),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){},
                        borderRadius: BorderRadius.circular(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Chat Now", style: GoogleFonts.plusJakartaSans(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 12),),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined, color: Color(0xFF2F80ED),), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person_search_outlined, color: Colors.black54,), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month_sharp, color: Colors.black54), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.message_outlined, color: Colors.black54), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.black54), label: 'Home'),
          ]
      ),
    );
  }
}

