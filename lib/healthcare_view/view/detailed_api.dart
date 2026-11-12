import 'package:flutter/material.dart';

class DetailedApi extends StatelessWidget {
  final int id;
  final int userId;
  final String title;
  final String body;

  const DetailedApi(
      this.id,
      this.userId,
      this.title,
      this.body, {
        super.key,
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Api Detailed Response"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal : 10,vertical: 10),
          height: 400,
          decoration: BoxDecoration(
            color: Colors.blueAccent.shade400,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ID:\n $id", style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Text("User ID: \n $userId", style: const TextStyle(color: Colors.white, fontSize: 16)),
              const SizedBox(height: 10),
              Text("Title: \n $title", style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(height: 10),
              Text("Body: \n $body", style: const TextStyle(fontSize: 14, color: Colors.white,)),
            ],
          ),
        ),
      ),
    );
  }
}