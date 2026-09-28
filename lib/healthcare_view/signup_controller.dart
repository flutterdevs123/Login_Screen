import 'package:dummy/healthcare_view/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'user_list.dart';

class SignupController extends GetxController{
final TextEditingController name = TextEditingController();
final TextEditingController email = TextEditingController();
final TextEditingController password = TextEditingController();
final TextEditingController confirmPassword = TextEditingController();



RxBool isVisibilityPassword = true.obs;
RxBool isVisibilityConfirmPassword = true.obs;
var isChecked = false.obs;

void toogleVisibilityPassword(){
  isVisibilityPassword.value = !isVisibilityPassword.value;
}

void toogleVisibilityConfirmPassword(){
  isVisibilityConfirmPassword.value = !isVisibilityConfirmPassword.value;
}

void toogleCheck(){
  isChecked.value = !isChecked.value;
}

void signUp(){
  UserModel? foundUser;
  for (int i=0; i<users.length; i++){
    if(email.text.trim() == users[i].userEmail){
      foundUser= users[i];
      break;
    }
  }
  if(foundUser != null){
    Get.snackbar('Error', "User's mail is already registered try a new mail");
  }else{
    users.add(
      UserModel(userName: name.text.trim(), userEmail: email.text.trim(), userPassword: password.text.trim()),
    );
    Get.toNamed('/login');
    name.clear();
    email.clear();
    password.clear();
    confirmPassword.clear();
  }
}



@override
  void onClose(){
  name.dispose();
  email.dispose();
  password.dispose();
  confirmPassword.dispose();
  super.onClose();
}
}