import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color iconBackgroundColor;
  final String textOne;
  final Color textOneColor;
  final String textTwo;
  final Color textTwoColor;
  final double height;
  final double width;
  const CustomCard({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.iconBackgroundColor,
    required this.textOne,
    required this.textOneColor,
    required this.textTwo,
    required this.textTwoColor,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        child: Container(
          height: height,
          width: width,
          padding: EdgeInsets.symmetric(vertical: 9, horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
              border: Border.all(
                  width: 2,
                  color: Color(0xFFF1F5F9)
              )
          ),
          child: Column(
            children: [
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: iconBackgroundColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(icon, color: iconColor, size: 24,),
              ),
              const SizedBox(height: 5,),
              Text("$textOne", style: GoogleFonts.plusJakartaSans(color: textOneColor, fontSize: 12, fontWeight: FontWeight.w700),),
              Text("$textTwo", style: GoogleFonts.plusJakartaSans(color: textTwoColor, fontSize: 10, fontWeight: FontWeight.w400),),
            ],
          ),
        ),
      );

  }
}
