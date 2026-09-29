import 'package:flutter/material.dart';

class PracticeStack extends StatefulWidget {
  const PracticeStack({super.key});

  @override
  State<PracticeStack> createState() => _PracticeStackState();
}

class _PracticeStackState extends State<PracticeStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text('Practice Screen'),
        centerTitle: true,
      ),

      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAttZcVNMVr8fc5KvTcKEBuwh5jESX-rqHyQIIMxiuPQ&s=10'), fit: BoxFit.cover)
                    ),
                  ) 
              ),
              Expanded(flex: 5, child: Container(color: Colors.white,))
            ],
          ),
          SingleChildScrollView(
            child: Padding(padding: EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(height: 200,),
                Container(
                  width: double.infinity,
                  height: 700,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                  ),
                  child: Column(
                    children: [
                      Text('Container Starts Here'),
                    ],
                  ),
                )
              ],
            ),),
          ),
        ],
      )
    );
  }
}
