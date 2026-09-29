import 'package:dummy/healthcare_view/signup_screen.dart';
import 'package:dummy/view/bank_dashboard.dart';
import 'package:dummy/view/bank_login.dart';
import 'package:dummy/view/buttons_practice.dart';
import 'package:dummy/view/dashboard.dart';
import 'package:dummy/view/haseeb_dashboard.dart';
import 'package:dummy/view/home_screen.dart';
import 'package:dummy/view/login_screen.dart';
import 'package:dummy/view/practice_stack.dart';
import 'package:dummy/view/set_state_practice.dart';
import 'package:dummy/view/tables_screen.dart';
import 'package:dummy/view/task_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'healthcare_view/dashboard_screen.dart';
import 'healthcare_view/login_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/dashboard_screen' : (context) => HealthCareDashboard(),
        // '/' : (context) => HaseebDashboard(),
        // '/' : (context) => ButtonsPractice(),
        // '/' : (context) => SetStatePractice(),
        // '/' : (context) => LoginScreen(),
        // 'home_screen' : (context) => HomeScreen(userEmail: '', userPassword: '',),
        // '/' : (context) => TablesScreen(),
        // '/' : (context) => TaskScreen(),
        // '/' : (context) => BankLogin(),
        // '/bank_dashboard' : (context) => BankDashboard(),
        // '/' : (context) => PracticeStack(),
        '/login' : (context) => HealthCareLogin(),
        '/' : (context) => HealthCareSignup(),
      },
    );
  }
}
