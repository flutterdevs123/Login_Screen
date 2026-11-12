import 'dart:convert';

import 'package:dummy/healthcare_view/model/api_practice.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class GetPostApi extends GetxController{

  RxList<Post> listData = <Post>[].obs;


  Future<List<Post>> getResponse ()async{
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    // debugPrint(response.statusCode.toString());
    final list = jsonDecode(response.body);
    for(var i in list){
      listData.add(Post.fromJson(i));
    }

    // print(listData[0].title);
    return listData;
  }
}






// Expanded(
// child: FutureBuilder(
// future: api.getResponse(),
// builder: (context, snapshot){
// return ListView.builder(
// itemCount: snapshot.data!.length,
// itemBuilder: (context, index){
// return ListTile(
// title: Text(snapshot.data![index].title.toString()),
// );
// });
// }),
// ),
//
//
// final GetPostApi api = GetPostApi();
//
// api.getResponse();
//
//
//
//
// ListView.builder(
// itemCount: 10,
// itemBuilder: (BuildContext context, int index){
//
//
// return Container(
// padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
// margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
// decoration: BoxDecoration(
// color: Colors.black26,
// borderRadius: BorderRadius.circular(12),
// ),
// child: ListTile(),
// );
// // return ListTile(
// //   leading: Icon(Icons.home_outlined),
// //   trailing: Icon(Icons.phone),
// //   title: Text("Person ${index+1}"),
// //   subtitle: Text("Data Shown"),
// // );
// }
//
// ),