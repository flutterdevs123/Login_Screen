import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final String userEmail;
  final String userPassword;
  const HomeScreen({
    super.key,
    required this.userEmail,
    required this.userPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome, You are now on home screen.', style :TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),textAlign: TextAlign.center,),
              const SizedBox(height: 10,),
              Text('email : ${userEmail}', style :TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),textAlign: TextAlign.center),
              const SizedBox(height: 10,),
              Text('email : ${userPassword}', style :TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
