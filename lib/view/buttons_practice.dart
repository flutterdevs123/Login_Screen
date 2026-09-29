import 'package:flutter/material.dart';

class ButtonsPractice extends StatelessWidget {
  const ButtonsPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        //   children: [
        //     // Simple Elevated button without style
        //     ElevatedButton(
        //         onPressed: (){
        //           print('Hello');
        //         },
        //         child: Text('Simple Elevated Button'),
        //     ),
        //
        //     // Elevated Button With Styling
        //     ElevatedButton(
        //         onPressed: (){},
        //       style: ElevatedButton.styleFrom(
        //         backgroundColor: Colors.blue,
        //         foregroundColor: Colors.redAccent,
        //         padding: EdgeInsets.symmetric(horizontal: 34, vertical: 12),
        //       ),
        //         child: Text("Login"),
        //     ),
        //
        //     // Elevated Button with height and width
        //     SizedBox(
        //       width: double.infinity,
        //       height: 50,
        //       child: ElevatedButton(
        //           onPressed: (){
        //             print('Hello World');
        //           },
        //         style: ElevatedButton.styleFrom(
        //           padding: EdgeInsets.symmetric(vertical: 10),
        //           backgroundColor: Colors.black45,
        //           foregroundColor: Colors.grey
        //         ),
        //           child: Text('Hello'),
        //       ),
        //     ),
        //
        //     // gradient button
        //     Container(
        //       height: 50,
        //       width: double.infinity,
        //       decoration: BoxDecoration(
        //         gradient:  const LinearGradient(colors: [Colors.deepPurple ,Colors.blue, Colors.lightBlueAccent],
        //         begin: Alignment.centerLeft,
        //           end: Alignment.centerRight,
        //         ),
        //         borderRadius: BorderRadius.circular(15),
        //       ),
        //       child: Material(
        //         color: Colors.transparent,
        //         child: InkWell(
        //           onTap: (){print('Login Button Pressed');},
        //           borderRadius: BorderRadius.circular(15),
        //           child: Center(
        //             child: Text('Login', style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),),
        //           ),
        //         ),
        //       ),
        //     ),
        //    
        //     // Simple Outline Button
        //     OutlinedButton(
        //         onPressed: (){}, 
        //         child: Text('Sign Up')
        //     ),
        //
        //     // Outline Button With Styling
        //     OutlinedButton(
        //         onPressed: (){},
        //         style: OutlinedButton.styleFrom(
        //           foregroundColor: Colors.black,
        //           side: BorderSide(color: Colors.black, width: 2),
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(15),
        //           )
        //         ),
        //         child: Text('Sign Up'),
        //     ),
        //
        //     // Text Button without Style
        //     TextButton(
        //         onPressed: (){print('Button Pressed');},
        //         child: Text('Text Button'),
        //     ),
        //    
        //     // Icon Button with out styling
        //     IconButton(
        //         onPressed:(){} , 
        //         icon: Icon(Icons.data_saver_off_rounded)
        //     ),
        //   ],
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.purple, Colors.blue],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: (){},
                borderRadius: BorderRadius.circular(15),
                child: Padding(padding: EdgeInsets.symmetric(vertical: 10), 
                child: Center(
                  child: Text('Login', style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20, fontWeight: FontWeight.bold,),),
                ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: OutlinedButton(
                onPressed: (){},
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  side: BorderSide(color: Colors.black45, width: 1.5),
                ),
                child: Text('Sign Up', style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20, fontWeight: FontWeight.bold,)),
            ),
          ),
          const SizedBox(height: 10,),
          TextButton(
              onPressed: (){},
              child: Text('Forget Password', style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20, fontWeight: FontWeight.bold,)),
          )
        ],
      ),
    );
  }
}
