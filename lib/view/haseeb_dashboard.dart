import 'package:flutter/material.dart';

class HaseebDashboard extends StatefulWidget {
  const HaseebDashboard({super.key});

  @override
  State<HaseebDashboard> createState() => _HaseebDashboardState();
}

class _HaseebDashboardState extends State<HaseebDashboard> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F111A),
      //App Bar
      appBar: AppBar(
        backgroundColor: Color(0xFF0F111A),
        leading: UnconstrainedBox(
          child: GestureDetector(
            onTap: (){
              setState(() {
                isLoading= !isLoading;
              });
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Color(0xFF563D82),
                borderRadius: BorderRadius.circular(50),
              ),
              child: isLoading ?
              Icon(Icons.menu, color: Colors.white,):
              CircularProgressIndicator(color: Colors.white)
              ,
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 40,),
            Text('Good Evening, ', style: TextStyle(fontSize: 12, color: Color(0xFFA0A3B5), fontStyle: FontStyle.italic),),
            Row(children: [Text('Tayyab Khan, ', style: TextStyle(fontSize: 14, color: Colors.white, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),Icon(Icons.waving_hand_rounded, size: 14, color: Colors.yellow.shade400,)],),
          ],
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFF1A1C29),
            ),
            child: Icon(Icons.notifications_none, color: Color(0xFFA0A385),),
          ),
          const SizedBox(width: 20,),
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/images.jfif'),
          ),
          const SizedBox(width: 20,),
        ],
      ),
      //body
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const SizedBox(height: 10,),
              // Container 1 top
              Container(
                padding: EdgeInsets.all(10),
                height: 210,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF2A1B44),
                      Color(0xFF1A1C29),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    //Row 1
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey.shade800,
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Text('Daily Mantra ', style: TextStyle(fontSize: 14, color: Color(0xFF9D60FF), fontStyle: FontStyle.italic),),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    // Row 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Text Column
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Discipline Today, ', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic),),
                            Text('freedom ', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic),),
                            Text('tomorrow. ', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic),),
                            const SizedBox(height: 15,),
                            Row(
                              children: [
                                Icon(Icons.favorite_outline, color: Color(0xFF9D60FF),),
                                const SizedBox(width: 10,),
                                Text('Keep going! ', style: TextStyle(fontSize: 12, color: Color(0xFF9D60FF), fontStyle: FontStyle.italic),),
                              ],
                            ),
                          ],
                        ),
                        //image Container
                        Container(
                          height: 110,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade900,
                            image: const DecorationImage(
                              image: AssetImage('assets/images/img.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                    // Row 3
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('. . . . .'),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              // Text Row
              Row(
                children: [
                  Text('At a Glance' , style: TextStyle(color: Colors. white, fontSize: 16, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, ),)
                ],
              ),
              const SizedBox(height: 10,),
              // Row of Containers
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Container 1
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 120,
                    width: 68,
                    decoration: BoxDecoration(
                      color: Color(0xFF1A1C29),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFF4A90E2).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.checklist, color: Color(0xFF4A90E2),),
                        ),
                        const SizedBox(height: 3,),
                        Text('8' , style: TextStyle(color: Colors. white, fontSize: 16, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, ),),
                        Text('Task ' , style: TextStyle(color: Color(0xFFA0A3B5), fontSize: 10, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, ),),
                        Text('pending' , style: TextStyle(color: Color(0xFFA0A3B5), fontSize: 10, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, ),),
                      ],
                    ),
                  ),
                  //Container 2
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 120,
                    width: 68,
                    decoration: BoxDecoration(
                      color: Color(0xFF1A1C29),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFF50C878).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.calendar_today_outlined, color: Color(0xFF50C878),),
                        ),
                        const SizedBox(height: 3,),
                        Text('8' , style: TextStyle(color: Colors. white, fontSize: 16, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, ),),
                        Text('Task ' , style: TextStyle(color: Color(0xFFA0A3B5), fontSize: 10, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, ),),
                        Text('pending' , style: TextStyle(color: Color(0xFFA0A3B5), fontSize: 10, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, ),),
                      ],
                    ),
                  ),
                  //Container 3
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 120,
                    width: 68,
                    decoration: BoxDecoration(
                      color: Color(0xFF1A1C29),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5A623).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.timer_outlined, color: Color(0xFFF5A623),),
                        ),
                        const SizedBox(height: 3,),
                        Text('8' , style: TextStyle(color: Colors. white, fontSize: 16, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, ),),
                        Text('Task ' , style: TextStyle(color: Color(0xFFA0A3B5), fontSize: 10, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, ),),
                        Text('pending' , style: TextStyle(color: Color(0xFFA0A3B5), fontSize: 10, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, ),),
                      ],
                    ),
                  ),
                  //Container 4
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 120,
                    width: 68,
                    decoration: BoxDecoration(
                      color: Color(0xFF1A1C29),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFFB828D7).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.bookmark_border, color: Color(0xFFB828D7),),
                        ),
                        const SizedBox(height: 3,),
                        Text('8' , style: TextStyle(color: Colors. white, fontSize: 16, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, ),),
                        Text('Task ' , style: TextStyle(color: Color(0xFFA0A3B5), fontSize: 10, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, ),),
                        Text('pending' , style: TextStyle(color: Color(0xFFA0A3B5), fontSize: 10, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, ),),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              // Text Row 2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Quick Access', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16 ,fontStyle: FontStyle.italic,),),
                  Row(
                    children: [
                      Text('Customize', style: TextStyle(color: Color(0xFF9D60FF), fontSize: 12 ,fontStyle: FontStyle.italic,),),
                      const SizedBox(width: 5,),
                      Icon(Icons.dashboard ,size: 15, color: Color(0xFF9D60FF),),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              // Containers Row 2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 90,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFF563D82),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            Icons.timer, size: 25,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text('Focus', style: TextStyle(color: Color(0xFFA0A3B5), fontStyle: FontStyle.italic, fontSize: 12),),
                        Text('Timer', style: TextStyle(color: Color(0xFFA0A3B5), fontStyle: FontStyle.italic, fontSize: 12),),
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFF1A1C29),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            Icons.today_outlined, size: 20,
                            color: Color(0xFF50C878),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text('Focus', style: TextStyle(color: Color(0xFFA0A3B5), fontStyle: FontStyle.italic, fontSize: 12),),
                        Text('Timer', style: TextStyle(color: Color(0xFFA0A3B5), fontStyle: FontStyle.italic, fontSize: 12),),
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFF1A1C29),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            Icons.menu_book_rounded, size: 20,
                            color: Color(0xFFF5A623),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text('Focus', style: TextStyle(color: Color(0xFFA0A3B5), fontStyle: FontStyle.italic, fontSize: 12),),
                        Text('Timer', style: TextStyle(color: Color(0xFFA0A3B5), fontStyle: FontStyle.italic, fontSize: 12),),
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFF1A1C29),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            Icons.ac_unit_rounded, size: 20,
                            color: Color(0xFF4A90E2),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text('Focus', style: TextStyle(color: Color(0xFFA0A3B5), fontStyle: FontStyle.italic, fontSize: 12),),
                        Text('Timer', style: TextStyle(color: Color(0xFFA0A3B5), fontStyle: FontStyle.italic, fontSize: 12),),
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFF1A1C29),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            Icons.notifications, size: 20,
                            color: Color(0xFFFF5A5F),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text('Focus', style: TextStyle(color: Color(0xFFA0A3B5), fontStyle: FontStyle.italic, fontSize: 12),),
                        Text('Timer', style: TextStyle(color: Color(0xFFA0A3B5), fontStyle: FontStyle.italic, fontSize: 12),),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              // Text Row 3
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Todays Schedule ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16 ,fontStyle: FontStyle.italic,),),
                  Text('View all', style: TextStyle(color: Color(0xFF9D60FF), fontSize: 12 ,fontStyle: FontStyle.italic,),),
                ],
              ),
              const SizedBox(height: 10,),
              // Container after row 3 of text
              Container(
                padding: EdgeInsets.all(10),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF1A1C29),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFF50C878).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.school, size: 25,
                                color: Color(0xFF50C878),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Study Session ', style: TextStyle(fontSize: 12, color: Colors.white, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text('10:00 AM - 11:30', style: TextStyle(fontSize: 12, color: Color(0xFF50C878), fontStyle: FontStyle.italic),),
                                        Text('AM', style: TextStyle(fontSize: 12, color: Color(0xFF50C878), fontStyle: FontStyle.italic),),
                                      ],
                                    ),
                                    const SizedBox(width: 5,),
                                    Text('| Loading ', style: TextStyle(fontSize: 12, color: Color(0xFFA0A3B5),),),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(width: 10,),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 2),
                          height: 25,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Color(0xFF50C878).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text('Upcoming', style: TextStyle(fontStyle: FontStyle.italic ,color: Color(0xFF50C878), fontWeight: FontWeight.bold, fontSize: 14),textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 1.5,
                      width: 250,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFF5A623).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.group, size: 25,
                                color: Color(0xFFF5A623),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Study Session ', style: TextStyle(fontSize: 12, color: Colors.white, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text('10:00 AM - 11:30', style: TextStyle(fontSize: 12, color: Color(0xFFF5A623), fontStyle: FontStyle.italic),),
                                        Text('AM', style: TextStyle(fontSize: 12, color: Color(0xFFF5A623), fontStyle: FontStyle.italic),),
                                      ],
                                    ),
                                    const SizedBox(width: 5,),
                                    Text('| Loading ', style: TextStyle(fontSize: 12, color: Color(0xFFA0A3B5),),),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(width: 10,),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 2),
                          height: 25,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5A623).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text('Upcoming', style: TextStyle(fontStyle: FontStyle.italic ,color: Color(0xFFF5A623), fontWeight: FontWeight.bold, fontSize: 14),textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 1.5,
                      width: 250,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFB828D7).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.book_outlined, size: 25,
                                color: Color(0xFFB828D7),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Study Session ', style: TextStyle(fontSize: 12, color: Colors.white, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text('10:00 AM - 11:30', style: TextStyle(fontSize: 12, color: Color(0xFFB828D7), fontStyle: FontStyle.italic),),
                                        Text('AM', style: TextStyle(fontSize: 12, color: Color(0xFFB828D7), fontStyle: FontStyle.italic),),
                                      ],
                                    ),
                                    const SizedBox(width: 5,),
                                    Text('| Loading ', style: TextStyle(fontSize: 12, color: Color(0xFFA0A3B5),),),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(width: 10,),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 2),
                          height: 25,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Color(0xFFB828D7).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text('Planned', style: TextStyle(fontStyle: FontStyle.italic ,color: Color(0xFFB828D7), fontWeight: FontWeight.bold, fontSize: 14),textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              // Text Row 4
              Row(
                children: [
                  Text('Daily Essentials ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16 ,fontStyle: FontStyle.italic,),),
                ],
              ),
              const SizedBox(height: 10,),
              // Last Container
              Container(
                padding: EdgeInsets.all(10),
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF1A1C29),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.water_drop, size: 30, color: Colors.blue,),
                        Text('Water', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18 ,fontStyle: FontStyle.italic,),),
                        Text('5 / 8 glasses', style: TextStyle(color: Color(0xFFA0A385), fontSize: 10 ,fontStyle: FontStyle.italic,),),
                        const SizedBox(height: 5,),
                        Container(
                          height: 20,
                          width: 60,
                          padding: EdgeInsets.only(top: 1),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            border: BoxBorder.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: Text('+ Add', style: TextStyle(color: Colors.white, fontSize: 10 ,fontStyle: FontStyle.italic,), textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.roller_skating, size: 30, color: Color(0xFF50C878),),
                        Text('Steps', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18 ,fontStyle: FontStyle.italic,),),
                        Text('6,423', style: TextStyle(color: Color(0xFF50C878), fontSize: 10 ,fontStyle: FontStyle.italic,),),
                        const SizedBox(height: 5,),
                        Container(
                          height: 20,
                          width: 60,
                          padding: EdgeInsets.only(top: 1),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            border: BoxBorder.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: Text('+ Add', style: TextStyle(color: Colors.white, fontSize: 10 ,fontStyle: FontStyle.italic,), textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.dark_mode, size: 30, color: Color(0xFF9D60FF),),
                        Text('Sleep', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18 ,fontStyle: FontStyle.italic,),),
                        Text('7h 10m', style: TextStyle(color: Color(0xFFA0A3B5), fontSize: 10 ,fontStyle: FontStyle.italic,),),
                        const SizedBox(height: 5,),
                        Container(
                          height: 20,
                          width: 60,
                          padding: EdgeInsets.only(top: 1),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            border: BoxBorder.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: Text('+ Add', style: TextStyle(color: Colors.white, fontSize: 10 ,fontStyle: FontStyle.italic,), textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.sunny, size: 30, color: Color(0xFFF5A623),),
                        Text('Mood', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18 ,fontStyle: FontStyle.italic,),),
                        Text('Great', style: TextStyle(color: Color(0xFFA0A3B5), fontSize: 10 ,fontStyle: FontStyle.italic,),),
                        const SizedBox(height: 5,),
                        Container(
                          height: 20,
                          width: 60,
                          padding: EdgeInsets.only(top: 1),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            border: BoxBorder.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: Text('+ Add', style: TextStyle(color: Colors.white, fontSize: 10 ,fontStyle: FontStyle.italic,), textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
      // Bottom Nav Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Color(0xFF151722),
        currentIndex: 0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const[
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label: 'Home',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.center_focus_strong),
            label: 'Focus',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.calendar_today_outlined),
            label: 'Plan',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.person_sharp),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}