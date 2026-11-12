import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProfileController extends GetxController{
  RxString name = "Tayyab".obs;
  RxString number = "03015216502".obs;
  RxString subject = "Computer Science".obs;
  RxString gender = "Male".obs;

  late TextEditingController nameController;
  late TextEditingController numberController;
  late TextEditingController subjectController;
  late TextEditingController genderController;


  @override
  void onInit(){
    super.onInit();
    nameController = TextEditingController(text: name.value);
    numberController = TextEditingController(text: number.value);
    subjectController = TextEditingController(text: subject.value);
    genderController = TextEditingController(text: gender.value);
  }

  void updateProfile(){
    name.value = nameController.text;
    number.value = numberController.text;
    subject.value = subjectController.text;
    gender.value = genderController.text;

    Get.back();
    Get.snackbar("Success", "You update your data successfully.",colorText: Colors.white,backgroundColor: Colors.green.withOpacity(0.3), snackPosition: SnackPosition.BOTTOM);
  }

  @override

  void onClose(){
    nameController.dispose();
    numberController.dispose();
    subjectController.dispose();
    genderController.dispose();
    super.onClose();

  }

}