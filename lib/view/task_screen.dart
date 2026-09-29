import 'package:flutter/material.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {

  final TextEditingController obtained1controller = TextEditingController();
  final TextEditingController obtained2controller = TextEditingController();
  final TextEditingController obtained3controller = TextEditingController();
  final TextEditingController obtained4controller = TextEditingController();
  final TextEditingController obtained5controller = TextEditingController();
  final TextEditingController obtained6controller = TextEditingController();
  final TextEditingController obtained7controller = TextEditingController();
  final TextEditingController total1controller = TextEditingController();
  final TextEditingController total2controller = TextEditingController();
  final TextEditingController total3controller = TextEditingController();
  final TextEditingController total4controller = TextEditingController();
  final TextEditingController total5controller = TextEditingController();
  final TextEditingController total6controller = TextEditingController();
  final TextEditingController total7controller = TextEditingController();

  double totalObtained = 0.0;
  double totalMarks = 0.0;
  double c = 0.0;

  void calculateValue(){
    double num1 = double.tryParse(obtained1controller.text) ?? 0.0 ;
    double num2 = double.tryParse(obtained2controller.text) ?? 0.0 ;
    double num3 = double.tryParse(obtained3controller.text) ?? 0.0 ;
    double num4 = double.tryParse(obtained4controller.text) ?? 0.0 ;
    double num5 = double.tryParse(obtained5controller.text) ?? 0.0 ;
    double num6 = double.tryParse(obtained6controller.text) ?? 0.0 ;
    double num7 = double.tryParse(obtained7controller.text) ?? 0.0 ;

    double numa = double.tryParse(total1controller.text) ?? 0.0 ;
    double numb = double.tryParse(total2controller.text) ?? 0.0 ;
    double numc = double.tryParse(total3controller.text) ?? 0.0 ;
    double numd = double.tryParse(total4controller.text) ?? 0.0 ;
    double nume = double.tryParse(total5controller.text) ?? 0.0 ;
    double numf = double.tryParse(total6controller.text) ?? 0.0 ;
    double numg = double.tryParse(total7controller.text) ?? 0.0 ;

    setState(() {
      totalObtained = num1 + num2 + num3 + num4 + num5 + num6 + num7 ;

      totalMarks = numa + numb + numc + numd + nume + numf + numg ;

      c = (totalObtained / totalMarks) * 100;
    });
  }

  @override
  void dispose(){
    obtained1controller.dispose();
    obtained2controller.dispose();
    obtained3controller.dispose();
    obtained4controller.dispose();
    obtained5controller.dispose();
    obtained6controller.dispose();
    obtained7controller.dispose();
    total1controller.dispose();
    total2controller.dispose();
    total3controller.dispose();
    total4controller.dispose();
    total5controller.dispose();
    total6controller.dispose();
    total7controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Text("Calculator", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, ),),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildTextFormField('obtained', obtained1controller),
                    buildTextFormField('total', total1controller),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildTextFormField('obtained', obtained2controller),
                    buildTextFormField('total', total2controller),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildTextFormField('obtained', obtained3controller),
                    buildTextFormField('total', total3controller),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildTextFormField('obtained', obtained4controller),
                    buildTextFormField('total', total4controller),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildTextFormField('obtained', obtained5controller),
                    buildTextFormField('total', total5controller),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildTextFormField('obtained', obtained6controller),
                    buildTextFormField('total', total6controller),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildTextFormField('obtained', obtained7controller),
                    buildTextFormField('total', total7controller),
                  ],
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){
                        calculateValue();
                      },
                      child: Text('Calculate Obtained and Total Marks')),
                ),
                const SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: 2, color: Colors.black),
                      ),
                      child: Text("Your total obtained marks $totalObtained" , textAlign: TextAlign.center,),
                    ),
                const SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: 2, color: Colors.black),
                      ),
                      child: Text("Your total marks of 7 subjects $totalMarks", textAlign: TextAlign.center,),
                    ),
                const SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 2, color: Colors.black),
                  ),
                  child: Text("Percentage of obtained marks are ${c.toStringAsFixed(2)}%", textAlign: TextAlign.center,),
                ),
              ],
            ),
          ),
      ),
    );
  }
}

Widget buildTextFormField(String label, TextEditingController controller){
  return Column(
    children: [
      Text('Enter $label'),
      const SizedBox(height: 10,),
      SizedBox(
        width: 150,
        child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.black54,
                width: 2
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                  color: Colors.black,
                  width: 2
              ),
            ),
            hintText: 'Enter $label'
          ),
        ),
      ),
      const SizedBox(height: 10,)
    ],
  );
}
