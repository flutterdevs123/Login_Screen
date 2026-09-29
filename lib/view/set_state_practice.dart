import 'package:flutter/material.dart';

class SetStatePractice extends StatefulWidget {
  const SetStatePractice({super.key});

  @override
  State<SetStatePractice> createState() => _SetStatePracticeState();
}

class _SetStatePracticeState extends State<SetStatePractice> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  
  double result = 0;
  
  @override
  void dispose(){
    super.dispose();
    num1Controller.dispose();
    num2Controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF037A40),
      // App Bar
      appBar: AppBar(
        title: Text('Calculator', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
        centerTitle: true,
        backgroundColor: Color(0xFF00E676),
      ),

      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        behavior: HitTestBehavior.opaque,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    child: TextField(
                      controller: num1Controller,
                      style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic,),
                      decoration: InputDecoration(
                        labelText: 'Enter Number 1', labelStyle: TextStyle(color: Colors.white, fontStyle: FontStyle.italic,),
                        hintText:  'Enter Your First Input Number', hintStyle: TextStyle(color: Colors.white, fontStyle: FontStyle.italic,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      controller: num2Controller,
                      style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic,),
                      decoration: InputDecoration(
                          labelText: 'Enter Number 2', labelStyle: TextStyle(color: Colors.white, fontStyle: FontStyle.italic,),
                          hintText:  'Enter Your Second Input Number', hintStyle: TextStyle(color: Colors.white, fontStyle: FontStyle.italic,),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Addition Button
                  SizedBox(
                    height: 50,
                    width: 90,
                    child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            double num1 = double.parse(num1Controller.text);
                            double num2 = double.parse(num2Controller.text);
                            result = num1 + num2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF209C05),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(' + ', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, fontStyle: FontStyle.italic),)
                    ),
                  ),
                  // Subtraction Button
                  SizedBox(
                    height: 50,
                    width: 90,
                    child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            double num1 = double.parse(num1Controller.text);
                            double num2 = double.parse(num2Controller.text);
                            result = num1 - num2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF209C05),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(' - ', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Multiplication Button
                  SizedBox(
                    height: 50,
                    width: 90,
                    child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            double num1 = double.parse(num1Controller.text);
                            double num2 = double.parse(num2Controller.text);
                            result = num1 * num2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF209C05),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(' x ', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, fontStyle: FontStyle.italic),)
                    ),
                  ),
                  // Division Button
                  SizedBox(
                    height: 50,
                    width: 90,
                    child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            double num1 = double.parse(num1Controller.text);
                            double num2 = double.parse(num2Controller.text);
                            result = num1 / num2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF209C05),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(' / ', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              // Result Container
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                decoration: BoxDecoration(
                  color: Color(0xFF136103),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text('Result : $result', style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 24),textAlign: TextAlign.center,),
              ),
              const SizedBox(height: 10,),
              // Clear Button
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      num1Controller.clear();
                      num2Controller.clear();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF136103),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text('Clear', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 24),textAlign: TextAlign.center,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
