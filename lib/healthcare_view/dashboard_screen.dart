import 'package:dummy/healthcare_view/custom_card.dart';
import 'package:flutter/material.dart';

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
            Text('Good Morning', style: TextStyle(color: Colors.black54, fontSize: 14,),),
            Text('Tayyab Khan', style: TextStyle(color: Color(0xFF2F80ED), fontSize: 17,fontWeight: FontWeight.bold),),
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
            child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none, color: Color(0xFF2F80ED))),
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
              height: 200,
              width: double.infinity,
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
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Free Health Checkup.", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Book today and get", style: TextStyle(color: Colors.white, fontSize: 19),),
                            Text("free BP screening ", style: TextStyle(color: Colors.white, fontSize: 19),),
                            Text("at home.", style: TextStyle(color: Colors.white, fontSize: 19),),
                          ],
                        ),
                        Container(
                          height: 85,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
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
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: (){},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Book Now", style: TextStyle(color: Color(0xFF2F80ED), fontWeight: FontWeight.bold, fontSize: 20),),
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
                      Text('DAILY STEP GOAL', style: TextStyle(color: Color(0xFF64748B), fontSize: 18),),
                      const SizedBox(width: 10,),
                      Container(
                        height: 25,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFBEB),
                          border: Border.all(width: 1, color: Color(0xFFFDE68A)),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.local_fire_department, color: Color(0xFFD97706), size: 20,),
                            Text('On Track', style: TextStyle(color: Color(0xFFD97706), fontSize: 13),),
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
                          Text('You are doing great! Keep it up.', style: TextStyle(color: Color(0xFF64748B), fontSize: 15),),
                          Row(
                            children: [
                              Text('6,432', style: TextStyle(color: Color(0xFF2F80ED), fontSize: 20, fontWeight: FontWeight.bold),),
                              Text(' / 8,000 steps', style: TextStyle(color: Color(0xFF94A3B8), fontSize: 15),),
                            ],
                          ),

                        ],
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Color(0xFF2F80ED),
                              width: 6,
                            )
                        ),
                        child: Icon(Icons.directions_walk, size: 40, color: Color(0xFF2F80ED),),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Color(0xFFFFF1F2),
                            border: Border.all(width: 1, color: Color(0xFFFFE4E6)),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.favorite_outlined, color: Color(0xFFF43F5E), size: 20,),
                            Text('72', style: TextStyle(color: Colors.black, fontSize: 12),),
                            Text('bpm', style: TextStyle(color: Color(0xFF64748B), fontSize: 12),),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Container(
                        height: 25,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Color(0xFFFFFBEB),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.electric_bolt, color: Color(0xFFF59E0B), size: 20,),
                            Text('420', style: TextStyle(color: Colors.black, fontSize: 12),),
                            Text('bpm', style: TextStyle(color: Color(0xFF64748B), fontSize: 12),),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Text("Quick Services", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w800),),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCard(icon: Icons.home_outlined, iconColor: Color(0xFF1E60D5), iconBackgroundColor: Color(0xFFEFF6FF), textOne: "Home Care", textOneColor: Colors.black, textTwo: "Nurse and Meds", textTwoColor: Color(0xFF94A3B8), height: 125.0, width: 110.0),
                CustomCard(icon: Icons.menu_book, iconColor: Color(0xFF0891B2), iconBackgroundColor: Color(0xFFECFEFF), textOne: "Records", textOneColor: Colors.black, textTwo: "Reports & Rx", textTwoColor: Color(0xFF94A3B8), height: 125.0, width: 110.0),
                CustomCard(icon: Icons.emergency, iconColor: Color(0xFFEC1C24), iconBackgroundColor: Color(0xFFFFF1F2), textOne: "Emergency", textOneColor: Color(0xFFEC1C24), textTwo: "SOS 24/7", textTwoColor: Color(0xFFEC1C24), height: 125.0, width: 110.0)
              ],
            ),
            const SizedBox(height: 10,),
            Container(
              height: 60,
              width: double.infinity,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xFFE9F2FE),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 2,
                  color: Color(0xFFBFDBFE),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      border:Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6e7frc_p8bKiO8zsGQRvfekt6x7tUDdhRPRM9uwfxmg&s=10"),fit: BoxFit.contain),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Need Help?", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),),
                      Text("Support is here for 24/7", style: TextStyle(color: Color(0xFF64748B), fontSize: 12),),
                    ],
                  ),
                  const SizedBox(width: 40,),
                  Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Color(0xFF2F80ED),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){},
                        borderRadius: BorderRadius.circular(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Chat Now", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
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
    );
  }
}

