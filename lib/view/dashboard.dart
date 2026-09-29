import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: AppBar(
        leading: Icon(Icons.notifications, color: Colors.white,),
        title: Text('Jazz World', style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, ),),
        centerTitle: true,
        backgroundColor: Colors.redAccent.shade700,
        actions: [
          Icon(Icons.search, color: Colors.white,),
          const SizedBox(width: 10,),
          Icon(Icons.refresh, color: Colors.white,),
          const SizedBox(width: 10,),
          Icon(Icons.menu, color: Colors.white,),
          const SizedBox(width: 10,),
        ],
      ),
      // body
      body: Stack(
        children: [
          //Background Column
          Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover,)
                    ),
                  )),
              Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.white,
                  )),
            ],
          ),
          // Material on Front
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                // Row 1 (Main Row) on Black Background
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Left Side Column
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Your Balance is ', style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 16),),
                        Row(
                          children: [
                            Text('Rs. ', style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 16),),
                            Text('480', style: TextStyle(color: Colors.white,fontWeight: FontWeight(600), fontStyle: FontStyle.italic, fontSize: 26),),
                          ],
                        ),
                      ],
                    ),
                    // Content on the right side
                    Row(
                      children: [
                        // image
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/images/images.jfif'),
                        ),
                        const SizedBox(width: 10,),
                        // name and number
                        Column(
                          children: [
                            Text('Tayyab Khan', style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 16),),
                            Text('0300-000000', style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 16),),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                // Tap To Recharge Container
                Container(
                  height: 30,
                  width: 280,
                  padding: EdgeInsets.only(top: 3),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(3)
                  ),
                  child: Text('Tap To Recharge ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 16),textAlign: TextAlign.center,),
                ),
                const SizedBox(height: 15,),
                // Data Details Container
                Container(
                  height: 180,
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Column(
                    children: [
                      // Row 1
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Remaining Usage', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, ),),
                          Text('View More >', style:  TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, ),),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      // Row Containing 3 Columns
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Column 1 (DATA)
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Row for icon and Text
                              Row(
                                children: [
                                  Icon(Icons.mobiledata_off, size: 17,),
                                  Text('Data', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, ),),
                                ],
                              ),
                              const SizedBox(height: 15,),
                              Container(
                                height: 60,
                                width: 60,
                                padding: EdgeInsets.only(top: 9),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: BoxBorder.all(
                                    color: Colors.black,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Column(
                                  children: [
                                    Text('5.00', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, ),),
                                    Text('GB', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, ),),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15,),
                              Text('Out Of 5000 MB', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10, fontStyle: FontStyle.italic, ),),
                            ],
                          ),
                          // Column 2 (DATA)
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Row for icon and Text
                              Row(
                                children: [
                                  Icon(Icons.call, size: 17,),
                                  Text('Calls', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, ),),
                                ],
                              ),
                              const SizedBox(height: 15,),
                              Container(
                                height: 60,
                                width: 60,
                                padding: EdgeInsets.only(top: 9),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: BoxBorder.all(
                                    color: Colors.yellowAccent.shade700,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Column(
                                  children: [
                                    Text('5000', style:  TextStyle(color: Colors.yellowAccent.shade700, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, ),),
                                    Text('mins', style:  TextStyle(color: Colors.yellowAccent.shade700, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, ),),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15,),
                              Text('Out Of 5000 Mins', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10, fontStyle: FontStyle.italic, ),),
                            ],
                          ),
                          // Column 3 (DATA)
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Row for icon and Text
                              Row(
                                children: [
                                  Icon(Icons.sms_rounded, size: 17,),
                                  Text('SMS', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, ),),
                                ],
                              ),
                              const SizedBox(height: 15,),
                              Container(
                                height: 60,
                                width: 60,
                                padding: EdgeInsets.only(top: 9),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: BoxBorder.all(
                                    color: Colors.redAccent.shade700,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Column(
                                  children: [
                                    Text('5000', style:  TextStyle(color: Colors.redAccent.shade700, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, ),),
                                    Text('SMS', style:  TextStyle(color: Colors.redAccent.shade700, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, ),),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15,),
                              Text('Out Of 5000 SMS', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10, fontStyle: FontStyle.italic, ),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8,),
                // Monthly Super Duper Plus
                Container(
                  height: 90,
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Monthly Super Duper Row 1
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                color: Colors.deepOrangeAccent,
                                child: Icon(Icons.star, color: Colors.redAccent.shade700,size: 15,),
                              ),
                              const SizedBox(width: 5,),
                              Text('Monthly Super Duper Plus', style:  TextStyle(color: Colors.redAccent.shade700,fontSize: 12, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, ),),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Rs. 799', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 12, fontStyle: FontStyle.italic, ),),
                              Text('Incl. Tax', style:  TextStyle(color: Colors.black, fontStyle: FontStyle.italic, fontSize: 10,),),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      // Monthly Super Duper Row 2
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Onnet', style:  TextStyle(color: Colors.black, fontStyle: FontStyle.italic,fontSize: 10, ),),
                                  Text('5000 Onnet', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 10, fontStyle: FontStyle.italic, ),),
                                ],
                              ),
                              const SizedBox(width: 7,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Offnet', style:  TextStyle(color: Colors.black, fontStyle: FontStyle.italic,fontSize: 10, ),),
                                  Text('500 Offnet', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 10, fontStyle: FontStyle.italic, ),),
                                ],
                              ),
                              const SizedBox(width: 7,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Data', style:  TextStyle(color: Colors.black, fontStyle: FontStyle.italic,fontSize: 10, ),),
                                  Text('5000 Mb', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 10, fontStyle: FontStyle.italic, ),),
                                ],
                              ),
                              const SizedBox(width: 7,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('SMS', style:  TextStyle(color: Colors.black, fontStyle: FontStyle.italic,fontSize: 10, ),),
                                  Text('5000 SMS', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 10, fontStyle: FontStyle.italic, ),),
                                ],
                              ),
                              const SizedBox(width: 7,),
                            ],
                          ),
                          Container(
                            height: 23,
                            width: 65,
                            padding: EdgeInsets.only(top: 2),
                            decoration: BoxDecoration(
                              color: Colors.redAccent.shade700,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Text('Subscribe', style:  TextStyle(color: Colors.white,fontSize: 12, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, ),textAlign: TextAlign.center,),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8,),
                // Offers Container
                Container(
                  height: 128,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Column(
                    children: [
                      // Row 1
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 63,
                            width: 83.5,
                            padding: EdgeInsets.only(top: 11),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black12),
                            ),
                            child: Column(
                              children: [
                                Icon(Icons.local_fire_department, color: Colors.black,size: 25,),
                                Text('Hot Offers', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10, fontStyle: FontStyle.italic, ),),
                              ],
                            ),
                          ),
                          Container(
                            height: 63,
                            width: 83.5,
                            padding: EdgeInsets.only(top: 11),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black12),
                            ),
                            child: Column(
                              children: [
                                Icon(Icons.call, color: Colors.black,size: 25,),
                                Text('Call Offers', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10, fontStyle: FontStyle.italic, ),),
                              ],
                            ),
                          ),
                          Container(
                            height: 63,
                            width: 83.5,
                            padding: EdgeInsets.only(top: 11),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black12),
                            ),
                            child: Column(
                              children: [
                                Icon(Icons.sms_rounded, color: Colors.black,size: 25,),
                                Text('SMS Offers', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10, fontStyle: FontStyle.italic, ),),
                              ],
                            ),
                          ),
                          Container(
                            height: 63,
                            width: 83.5,
                            padding: EdgeInsets.only(top: 11),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black12),
                            ),
                            child: Column(
                              children: [
                                Icon(Icons.lte_plus_mobiledata, color: Colors.black,size: 25,),
                                Text('Data Offers', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10, fontStyle: FontStyle.italic, ),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Row 2
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 63,
                            width: 83.5,
                            padding: EdgeInsets.only(top: 11),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black12),
                            ),
                            child: Column(
                              children: [
                                Icon(Icons.dashboard, color: Colors.black,size: 25,),
                                Text('All In One', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10, fontStyle: FontStyle.italic, ),),
                              ],
                            ),
                          ),
                          Container(
                            height: 63,
                            width: 83.5,
                            padding: EdgeInsets.only(top: 11),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black12),
                            ),
                            child: Column(
                              children: [
                                Icon(Icons.social_distance_rounded, color: Colors.black,size: 25,),
                                Text('Social Offers', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10, fontStyle: FontStyle.italic, ),),
                              ],
                            ),
                          ),
                          Container(
                            height: 63,
                            width: 83.5,
                            padding: EdgeInsets.only(top: 11),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black12),
                            ),
                            child: Column(
                              children: [
                                Icon(Icons.location_city, color: Colors.black,size: 25,),
                                Text('Apna Shehr', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10, fontStyle: FontStyle.italic, ),),
                              ],
                            ),
                          ),
                          Container(
                            height: 63,
                            width: 83.5,
                            padding: EdgeInsets.only(top: 11),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black12),
                            ),
                            child: Column(
                              children: [
                                Icon(Icons.dashboard_customize, color: Colors.black,size: 25,),
                                Text('Customize', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10, fontStyle: FontStyle.italic, ),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
