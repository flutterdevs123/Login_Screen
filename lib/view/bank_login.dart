import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BankLogin extends StatefulWidget {
  const BankLogin({super.key});

  @override
  State<BankLogin> createState() => _BankLoginState();
}

class _BankLoginState extends State<BankLogin> {
  
  final TextEditingController accountConttroller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  
  @override
  void dispose(){
    accountConttroller.dispose();
    passwordController.dispose();
    super.dispose();
  }

  bool isVisibility = true;

  void toogleVisibility(){
    isVisibility = !isVisibility;
  }

  void login(){
    String accountCont = accountConttroller.text.trim();
    String passwordCont = passwordController.text.trim();
    if(accountCont == "tayyab"  && passwordCont == "123456@"){
      Get.toNamed('/bank_dashboard');
      Get.snackbar(
          "Login Successfull.",
          "Welcome, you entered your bank account",
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 2),
      );
    }else{
      Get.snackbar(
        "Invalid Credentials",
        "Failed, you entered wrong details.",
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 2),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                Text('Welcome To Bank App', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),),
                const SizedBox(height: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Enter Username', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                    const SizedBox(height: 10,),
                    TextFormField(
                      controller: accountConttroller,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 3,
                            color: Colors.black54,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 3,
                            color: Colors.black54,
                          ),
                        ),
                        hintText: 'tayyab_khan',
                        suffixIcon: Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Text('Enter Password', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),textAlign: TextAlign.left,),
                    const SizedBox(height: 10,),
                    TextFormField(
                      controller: passwordController,
                      obscureText: isVisibility,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 3,
                            color: Colors.black54,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 3,
                            color: Colors.black54,
                          ),
                        ),
                        hintText: '*******',
                        suffixIcon: IconButton(
                            onPressed: (){
                          setState(() {
                            toogleVisibility();
                          });
                        },
                            icon: Icon(isVisibility ? Icons.visibility_off : Icons.visibility),
                      ),
                    )
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: (){
                            login();
                          },
                          child: Text('Login', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xEF032BF6),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
      ),
    );
  }
}
