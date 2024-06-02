import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Viewpage extends StatefulWidget {
  const Viewpage({super.key});

  @override
  State<Viewpage> createState() => _ViewpageState();
}

class _ViewpageState extends State<Viewpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("List"),
      ),
      body: FloatingActionButton(onPressed: () {
        fetchusers();
      }),
    );
  }

  void fetchusers() {
    print("fetch users called");
  }
}
