import 'package:flutter/material.dart';

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
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  color: iconBackgroundColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(icon, color: iconColor,),
              ),
              const SizedBox(height: 5,),
              Text("$textOne", style: TextStyle(color: textOneColor, fontSize: 14, fontWeight: FontWeight.bold),),
              Text("$textTwo", style: TextStyle(color: textTwoColor, fontSize: 12),),
            ],
          ),
        ),
      );

  }
}
