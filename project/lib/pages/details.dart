import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  String name;
  String price;
  String img;
  Details(
      {super.key, required this.name, required this.price, required this.img});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("D E T A I L S"),
      ),
      body: Center(
        child: Column(children: [
          Text(widget.name),
          Text(widget.price),
          Text(widget.img)
        ]),
      ),
    );
  }
}
