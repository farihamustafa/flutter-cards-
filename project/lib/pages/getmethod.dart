import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project/pages/model.dart';

class Getmethod extends StatefulWidget {
  const Getmethod({super.key});

  @override
  State<Getmethod> createState() => _GetmethodState();
}

class _GetmethodState extends State<Getmethod> {
  List<getlist> Mylist = [];
  Future<List<getlist>> getlistapi() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        Mylist.add(getlist.fromJson(i));
      }
      return Mylist;
    } else
      return Mylist;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getlistapi(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Text("loading");
                } else
                  return ListView.builder(
                    itemCount: Mylist.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          children: [
                            Text(Mylist[index].name.toString()),
                            Text(Mylist[index].id.toString()),
                            Text(Mylist[index].email.toString()),
                          ],
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
