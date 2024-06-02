// import 'package:flutter/material.dart';
// import 'package:project/pages/details.dart';
// import 'package:project/pages/gridmodel.dart';

// class Gridview extends StatefulWidget {
//   const Gridview({super.key});

//   @override
//   State<Gridview> createState() => _GridviewState();
// }

// class _GridviewState extends State<Gridview> {
//   Widget getcard(
//       {required String name, required String price, required String img}) {
//     return Card(
//       elevation: 30,
//       color: Color.fromARGB(255, 48, 45, 45),
//       child: Column(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(12),
//               topRight: Radius.circular(12),
//             ),
//             child: Image.network(img),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Text(
//                   name,
//                   style: TextStyle(fontSize: 18, color: Colors.white),
//                 ),
//                 Text(
//                   price,
//                   style: TextStyle(fontSize: 18, color: Colors.white),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   List<product> prod = [
//     product(
//         name: "headphone",
//         price: "4555",
//         img:
//             "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
//     product(
//         name: "Camera",
//         price: "40000",
//         img:
//             "https://images.pexels.com/photos/90946/pexels-photo-90946.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
//     product(
//         name: "Mascara",
//         price: "4555",
//         img:
//             "https://images.pexels.com/photos/3373718/pexels-photo-3373718.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
//     product(
//         name: "headphone",
//         price: "4555",
//         img:
//             "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
//     product(
//         name: "headphone",
//         price: "4555",
//         img:
//             "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
//     product(
//         name: "headphone",
//         price: "4555",
//         img:
//             "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
//     product(
//         name: "headphone",
//         price: "4555",
//         img:
//             "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
//     product(
//         name: "headphone",
//         price: "4555",
//         img:
//             "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
//     product(
//         name: "headphone",
//         price: "4555",
//         img:
//             "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           " G R I D V I E W",
//           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//         centerTitle: true,
//         backgroundColor: const Color.fromARGB(255, 43, 41, 41),
//         leading: IconButton(
//           onPressed: () {},
//           icon: Icon(
//             Icons.menu,
//             color: Colors.white,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: GestureDetector(
//           onTap: () {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) =>
//                       Details(name: name, price: price, img: img),
//                 ));
//           },
//           child: Container(
//             child: GridView.builder(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
//               itemCount: prod.length,
//               itemBuilder: (context, index) {
//                 return getcard(
//                     name: prod[index].name,
//                     price: prod[index].price,
//                     img: prod[index].img);
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
