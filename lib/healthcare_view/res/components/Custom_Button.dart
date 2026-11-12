import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.name, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 2, color: Colors.redAccent.shade700),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: onTap,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$name", style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 14),),
            ],
          ),
        ),
      ),
    );
  }
}
