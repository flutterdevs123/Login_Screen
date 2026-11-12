import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Support Screen", style: GoogleFonts.poppins(),),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      color: currentIndex == 0 ? Colors.blue : Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(15),
                        onTap: (){
                          setState(() {
                            currentIndex = 0;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Messages", style: GoogleFonts.poppins(color: currentIndex == 0 ? Colors.white : Colors.blue),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      color: currentIndex == 1 ? Colors.blue : Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(15),
                        onTap: (){
                          setState(() {
                            currentIndex = 1;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Groups", style: GoogleFonts.poppins(color: currentIndex == 1 ? Colors.white : Colors.blue),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                currentIndex == 0 ? Center(child: Text("Messages", style: GoogleFonts.poppins(color:Colors.blue),)) :
                Center(child: Text("Groups", style: GoogleFonts.poppins(color:Colors.blue),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
