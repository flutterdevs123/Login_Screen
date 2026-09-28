import 'package:dummy/healthcare_view/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'user_list.dart';

class LoginController extends GetxController{
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();



  RxBool isVisibilityPassword = true.obs;
  var isChecked = true.obs;

  void toogleVisibilityPassword(){
    isVisibilityPassword.value = !isVisibilityPassword.value;
  }

  void toogleCheck(){
    isChecked.value = !isChecked.value;
  }

  void login(){
    UserModel? foundUser;
    for(int i=0; i<users.length; i++){
      if(email.text.trim() == users[i].userEmail &&
      password.text.trim() == users[i].userPassword){
        foundUser = users[i];
        break;
      }
    }
    if (foundUser != null) {
      Get.snackbar("Login", "Welcome ${foundUser.userName}");
      Get.toNamed('/dashboard');
      email.clear();
      password.clear();
    } else {
      Get.snackbar("Error", "Invalid email or password");
    }
  }



  @override
  void onClose(){
    email.dispose();
    password.dispose();
    super.onClose();
  }
}