import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class LogicController extends GetxController{
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  RxBool isVisibility = true.obs;

  void toogleVisibilty (){
    isVisibility.value = !isVisibility.value;
  }

  void login(){
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if(email.isEmpty || password.isEmpty){
      Get.snackbar(
        'Fields Empty',
        'Email and password fields are empty, Please fill them',
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.red,
        backgroundColor: Colors.white,
      );
    }else if(!email.contains('@')){
      Get.snackbar(
        'Wrong Mail Format',
        'Email is incorrect',
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.red,
        backgroundColor: Colors.white,
      );
    }else if(email == 'abc@gmail.com' && password == '123@@@'){
      Get.snackbar(
        'Login',
        'You successfully loged in.',
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.black,
        backgroundColor: Colors.white,
      );
      Get.offAll(() => HomeScreen(
        userEmail: email,
        userPassword: password,
      ));
    }else{
      Get.snackbar(
        'Ohooo',
        'Invalid Credentials.',
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.black,
        backgroundColor: Colors.white,
      );
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}