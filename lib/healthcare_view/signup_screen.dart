import 'package:dummy/healthcare_view/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HealthCareSignup extends StatelessWidget {

  final SignupController controller = Get.put(SignupController());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,

      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  Text('Signup', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20,),
                        Text('Full Name', style: TextStyle(color: Colors.black, fontSize: 14),),
                        const SizedBox(height: 5,),
                        TextFormField(
                          onTapOutside: (event) {
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                            controller: controller.name,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.grey.shade400,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.black54,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Color(0xFFFA0202),
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Color(0xFFFA0202),
                                ),
                              ),
                              hintText: 'John Doe',
                              hintStyle: TextStyle(color: Colors.grey.shade400,),
                              suffixIcon: Icon(Icons.person, color: Colors.grey.shade400,),
                            ),
                            validator: (value){
                              if(controller.name.text.trim().isEmpty){
                                return 'Fields can not be empty';
                              }else if(controller.name.text.trim().length <= 2){
                                return 'Name consist of at least 3 letters.';
                              }return null;
                            },
                          ),
                        const SizedBox(height: 15,),
                        Text('Email Address', style: TextStyle(color: Colors.black, fontSize: 14),),
                        const SizedBox(height: 5,),
                        TextFormField(
                          onTapOutside: (event) {
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                          controller: controller.email,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.grey.shade400,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.black54,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Color(0xFFFA0202),
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Color(0xFFFA0202),
                                ),
                              ),
                              hintText: 'JohnDoe@gmail.com',
                              hintStyle: TextStyle(color: Colors.grey.shade400,),
                              suffixIcon: Icon(Icons.mail, color: Colors.grey.shade400,),
                            ),
                          validator: (value){
                              if(controller.email.text.trim().isEmpty){
                                return 'Fields can not be empty';
                              }if(!controller.email.text.trim().isEmail){
                                return 'Enter a valid email';
                              }return null;
                          },
                          ),
                        const SizedBox(height: 10,),
                        Text('Password', style: TextStyle(color: Colors.black, fontSize: 14),),
                        const SizedBox(height: 5,),
                        Obx(
                          () =>  TextFormField(
                            onTapOutside: (event) {
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                              controller: controller.password,
                              obscureText: controller.isVisibilityPassword.value,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.black54,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color(0xFFFA0202),
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color(0xFFFA0202),
                                  ),
                                ),
                                hintText: '********',
                                hintStyle: TextStyle(color: Colors.grey.shade400,),
                                suffixIcon: IconButton(onPressed: (){
                                    controller.toogleVisibilityPassword();
                                }, icon: controller.isVisibilityPassword.value ? Icon(Icons.visibility_off, color: Colors.grey.shade400,) : Icon(Icons.visibility , color: Colors.grey.shade400)),
                              ),
                            validator: (value){
                              if(controller.password.text.trim().isEmpty){
                                return 'Fields can not be empty';
                              }else if(controller.password.text.trim().length< 8){
                                return 'Password should have at least 8 characters.';
                              }return null;
                            },
                            ),
                        ),
                        const SizedBox(height: 10,),
                        Text('Confirm Password', style: TextStyle(color: Colors.black, fontSize: 14),),
                        const SizedBox(height: 5,),
                        Obx(
                            () => TextFormField(
                              onTapOutside: (event) {
                                FocusManager.instance.primaryFocus?.unfocus();
                              },
                                controller: controller.confirmPassword,
                                obscureText: controller.isVisibilityConfirmPassword.value,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.grey.shade400,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Color(0xFFFA0202),
                                      ),
                                    ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Color(0xFFFA0202),
                                    ),
                                  ),
                                    hintText: '********',
                                    hintStyle: TextStyle(color: Colors.grey.shade400,),
                                    suffixIcon: IconButton(onPressed: (){
                                      controller.toogleVisibilityConfirmPassword();
                                    }, icon: controller.isVisibilityConfirmPassword.value ? Icon(Icons.visibility_off, color: Colors.grey.shade400,) : Icon(Icons.visibility , color: Colors.grey.shade400)),
                                ),
                              validator: (value){
                                if(controller.confirmPassword.text.trim().isEmpty){
                                  return 'Fields can not be empty';
                                }else if(controller.confirmPassword.text.trim().length < 8){
                                  return 'Password should have at least 8 characters.';
                                }else if(controller.confirmPassword.text.trim() != controller.password.text.trim()){
                                  return 'Password is not matching';
                                }return null;
                              },
                              ),
                        ),
                        const SizedBox(height: 10,),
                      ],
                    ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(
                          () => Checkbox(
                            value: controller.isChecked.value,
                            activeColor: Color(0xFF007EFF),
                            onChanged: (value){
                              controller.toogleCheck();
                            },
                          ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('By Creating an Account, i accept Hiring Hub ', style: TextStyle(color: Colors.black, fontSize: 12)),
                          Text('terms of Use and Privacy Policy', style: TextStyle(color: Colors.black, fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF007EFF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(15),
                        onTap: (){
                          if(formKey.currentState!.validate()){
                            if(controller.isChecked.value == false){
                              Get.snackbar('Error', 'Accept terms and conditions' , snackPosition: SnackPosition.BOTTOM, duration: Duration(seconds: 2));
                            }else{
                              controller.signUp();
                            }
                          }
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Sign Up', style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(height: 1, width: 110, color: Colors.grey.shade600,),
                      Text('or sign up with'),
                      Container(height: 1, width: 110, color: Colors.grey.shade600,),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          height: 22,
                          width: 22,
                        ),
                        const SizedBox(width: 5,),
                        Text('Sign up with Google', style: TextStyle(color: Colors.black, fontSize: 16),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Have an Account? ', style: TextStyle(color: Colors.black, fontSize: 14),),
                      GestureDetector(
                        onTap: (){
                          Get.toNamed('/login');
                        },
                        child: Text('Sign in here', style: TextStyle(color: Color(0xFF007EFF), fontSize: 14),),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}

