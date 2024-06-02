import 'package:flutter/material.dart';
import 'package:project/pages/Grids.dart';
import 'package:project/pages/cards.dart';
import 'package:project/pages/getmethod.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Getmethod(),
      debugShowCheckedModeBanner: false,
    );
  }
}
