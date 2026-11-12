import 'package:dummy/healthcare_view/view/detailed_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view_model/get_post.dart';

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  final GetPostApi api = GetPostApi();
  late Future myFuture;

  @override
  void initState() {
    super.initState();
    myFuture = api.getResponse();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Api Screen")),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: myFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(child: Text("Error: ${snapshot.error}"));
                }
                if (!snapshot.hasData || snapshot.data == null || snapshot.data!.isEmpty) {
                  return const Center(child: Text("No Data Found"));
                }

                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final post = snapshot.data![index];
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent.shade400,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        leading: Text(
                          "${post.id}",
                          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          post.title.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        trailing: ElevatedButton(
                          onPressed: () {
                            Get.to(() => DetailedApi(
                              post.id,
                              post.userId,
                              post.title.toString(),
                              post.body.toString(),
                            ));
                          },
                          child: const Text("View"),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}