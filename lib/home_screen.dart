import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App Bar ->nav bar
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(173, 1, 28, 2),
        title: Text(
          "Home Screen",
          style: TextStyle(color: const Color.fromARGB(255, 180, 218, 13)),
        ),
      ), //appbar
    ); //scaffold
  }
}
