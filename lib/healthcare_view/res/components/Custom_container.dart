import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomContainer extends StatelessWidget {
  final String label;
  final String value;
  const CustomContainer({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$label"),
          const SizedBox(height: 10,),
          Container(
            height: 40,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(width: 2, color: Colors.black26),
            ),
            child: Text("$value"),
          ),
        ],
      ),
    );
  }
}
