import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  final bcolor = Colors.blue[200];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ' F R U I T S',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton.filled(
            onPressed: () {},
            icon: Icon(Icons.menu),
            style: IconButton.styleFrom(backgroundColor: Colors.blue[200]),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.share),
              style: IconButton.styleFrom(backgroundColor: bcolor),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                getcard('Strawberry', '\$200',
                    "https://images.unsplash.com/photo-1601004890684-d8cbf643f5f2?q=80&w=1430&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                getcard('Pineapple', '\$55',
                    "https://images.unsplash.com/photo-1550258987-190a2d41a8ba?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                getcard('Raspberry', '\$400',
                    "https://images.unsplash.com/photo-1577069861033-55d04cec4ef5?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                getcard('Orange', '\$66',
                    "https://images.unsplash.com/photo-1586439702132-55ce0da661dd?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                getcard('Blueberry', '\$500',
                    "https://images.unsplash.com/photo-1594002348772-bc0cb57ade8b?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                getcard('Grapes', '\$55',
                    "https://images.unsplash.com/photo-1604132847935-2fa64ea9c4a5?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget getcard(String product, String price, img) {
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: Container(
      height: 400,
      width: 200,
      child: Card(
        color: Colors.black,
        elevation: 20,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                img,
                fit: BoxFit.cover,
                height: 288,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    product,
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Text(
                    price,
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[200],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ),
    ),
  );
}
