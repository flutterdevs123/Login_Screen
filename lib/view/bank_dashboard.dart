import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BankDashboard extends StatefulWidget {
  const BankDashboard({super.key});

  @override
  State<BankDashboard> createState() => _BankDashboardState();
}

class _BankDashboardState extends State<BankDashboard> {

  final TextEditingController sendController = TextEditingController();
  final TextEditingController withdrawController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  int total = 2500;

  void send(){
    if(withdrawController.text.trim().isEmpty){
      Get.snackbar('Error', 'Field cannot be empty', snackPosition: SnackPosition.BOTTOM);
      return;
    }
    if(sendController.text.trim().contains('.')){
      Get.snackbar('Error', 'Input can not be in points', snackPosition: SnackPosition.BOTTOM);
      return;
    }

    int sendMoney = int.tryParse(withdrawController.text) ?? 0;
    if(sendMoney <= 0 ){
      Get.snackbar('Error', 'Enter amount greater than 0', snackPosition: SnackPosition.BOTTOM);
      return;
    }
    if(total == 0 || sendMoney > total){
      Get.snackbar('Insufficient Balance', 'Your Balance is insufficient.', snackPosition: SnackPosition.BOTTOM);
    }else {
      total -= sendMoney;
    }
  }

  void recieve(){
    if(sendController.text.trim().isEmpty){
      Get.snackbar('Error', 'Field cannot be empty', snackPosition: SnackPosition.BOTTOM);
      return;
    }
    if(sendController.text.trim().contains('-')){
      Get.snackbar('Error', 'Field cannot be have - in its input', snackPosition: SnackPosition.BOTTOM);
      return;
    }
    if(sendController.text.trim().contains('.')){
      Get.snackbar('Error', 'Input can not be in points', snackPosition: SnackPosition.BOTTOM);
      return;
    }
    int recieveMoney = int.tryParse(sendController.text) ?? 0;

    if(recieveMoney <= 0 ){
      Get.snackbar('Error', 'Enter amount greater than 0', snackPosition: SnackPosition.BOTTOM);
      return;
    }

    total += recieveMoney;
  }

  @override
  void dispose(){
    sendController.dispose();
    withdrawController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        leading: UnconstrainedBox(
          child: Container(
            height: 50,
            width: 50,
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: Color(0xEA0037ED),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text('TK', style: TextStyle(color: Colors. white,fontWeight: FontWeight.bold, fontSize: 16,) , textAlign: TextAlign.center,),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome back, ', style: TextStyle(color: Color(0xFF3B3C3C), fontSize: 16,) ),
            Text('Tayyab Khan', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20,)),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,)),
        ],
        elevation: 0,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors:
                [Color(0xEA0037ED) , Color(0xF00795ED)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
                ),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Total Balance, ', style: TextStyle(color: Colors.white, fontSize: 18,) ),
                  const SizedBox(height: 15,),
                  Text('Rs. $total', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24,)),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('**** **** **** 1234', style: TextStyle(color: Colors.white, fontSize: 16,)),
                      Text('VISA', style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 20,)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Text('Operations ', style: TextStyle(color: Color(0xFF000000), fontSize: 20, fontWeight: FontWeight.bold) ),
            const SizedBox(height: 10,),
            Form(
              key: formKey,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 210,
                          height: 50,
                          child: TextFormField(
                            onTapOutside: (event) {
                              FocusManager.instance.primaryFocus?.unfocus(); // Unfocuses the field
                            },
                            controller: sendController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.black54,
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.black,
                                  )
                              ),
                              hintText: 'Enter Amount to send',
                            ),
                            validator: (va){
                              if(va!.trim().contains('.')){
                                return "Enter valid number";
                              }
                              return null;
                            },
                          )
                      ),
                      SizedBox(
                        height: 50,
                        width: 110,
                        child: ElevatedButton(
                          onPressed: (){
                            if(formKey.currentState!.validate()){
                              setState(() {
                                recieve();
                                sendController.clear();
                              });
                            }

                          },
                          child: Text('Deposit'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xEA0037ED),
                              foregroundColor: Color(0xFFFFFFFF)
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 210,
                          height: 50,
                          child: TextFormField(
                            onTapOutside: (event) {
                              FocusManager.instance.primaryFocus?.unfocus(); // Unfocuses the field
                            },
                            controller: withdrawController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.black54,
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.black,
                                  )
                              ),
                              hintText: 'Enter Amount to withdraw',
                            ),
                            validator: (value){
                              if(value!.trim().contains('.')){
                                return 'Please enter a valid number';
                              }
                              return null;
                            },
                          )
                      ),
                      SizedBox(
                        height: 50,
                        width: 110,
                        child: ElevatedButton(
                          onPressed: (){
                            if(formKey.currentState!.validate()){
                              setState(() {
                                send();
                                withdrawController.clear();
                              });
                            }

                          },
                          child: Text('Withdraw'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xEA0037ED),
                              foregroundColor: Color(0xFFFFFFFF)
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
