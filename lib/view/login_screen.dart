import 'package:dummy/view/logic_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LogicController controller = Get.put(LogicController());

    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40,),
              Text('Login', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),),
              const SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: controller.emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black54,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black,
                        ),
                      ),
                      hintText: 'abc@gmail.com',
                      suffixIcon: Icon(Icons.email),
                    ),
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                  ),
                  const SizedBox(height: 10,),
                  Text('Password', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                  const SizedBox(height: 10,),
                  Obx(
                      () => TextFormField(
                        controller: controller.passwordController,
                        obscureText: controller.isVisibility.value,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.black54,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.black,
                            ),
                          ),
                          hintText: '********',
                          suffixIcon: IconButton(
                            onPressed: (){
                              controller.toogleVisibilty();
                            },
                            icon: Icon(controller.isVisibility.value ? Icons.visibility_off : Icons.visibility),
                          ),
                        ),
                        onTapOutside: (event) {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                      ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Forget Password', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: (){
                          controller.login();
                        },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xEA0037ED)
                      ),
                        child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),textAlign: TextAlign.center,),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                      TextButton(
                        onPressed: (){},
                        child: Text('Sign Up', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
