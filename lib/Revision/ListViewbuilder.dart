import 'package:flutter/material.dart';

class Listviewbuilder extends StatelessWidget {
  Listviewbuilder({super.key});
  List color = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.cyan,
    Colors.purple,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: color.length,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            margin: EdgeInsets.all(8),
            color: color[index],
            child: Text("${index}"),
          );
        },
      ),
    );
  }
}



















//


// class Listviewbuilder extends StatelessWidget {
//   Listviewbuilder({super.key});

//   final List names = ["Karan", "Rahul", "Amit", "Jay", "Priya"];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.amber[200],

//         centerTitle: true,
//         title: Text("Names"),
//       ),
//       body: ListView.builder(
//         itemCount: names.length,
//         itemBuilder: (context, index) {
//           // 1. Always use 'return' inside itemBuilder
//           // 2. Display the name using names[index]
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height: 100,
//               width: 290,
//               color: Colors.blue.shade100,

//               child: Center(
//                 child: Text(
//                   names[index], //Displays based on index,
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

