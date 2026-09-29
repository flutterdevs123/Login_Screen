/*import 'package:flutter/material.dart';

class TablesScreen extends StatefulWidget {
  const TablesScreen({super.key});

  @override
  State<TablesScreen> createState() => _TablesScreenState();
}

class _TablesScreenState extends State<TablesScreen> {

  TextEditingController tableController = TextEditingController();

  void prinTable(){
    int num = int.parse(tableController.text);
    for(int i = 0; i <= 10; i++){
      print("${num} x ${i} = ${num * i}");
    }
  }
  @override
  void dispose(){
    tableController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                TextFormField(
                  controller: tableController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.black54
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.black54
                        )
                    ),
                    hintText: 'Enter a number to print table of that number ',
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){
                        SingleChildScrollView(
                          child: Container(
                            height: 150,
                            width: double.infinity,
                            child: tableController.prinTable(),
                          ),
                        );
                      },
                      child: Text('Print table', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFA073BED),
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
*/