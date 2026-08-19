import 'package:flutter/material.dart';

import 'button_example.dart';
import 'image_example.dart';
import 'shapesPractice.dart';

class BottomNavExample extends StatefulWidget {
  BottomNavExample({super.key});

  @override
  State<BottomNavExample> createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  int currentI = 0;

  void changeIndex(int index) {
    setState(() {
      currentI = index;
    });
  }

  List screens = [Shapespractice(), ButtonExample(), ImageExample()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Bottom navbar Example",
          style: TextStyle(color: Colors.blueAccent),
        ),
      ),

      body: screens[currentI],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(color: Colors.amber),
        selectedItemColor: const Color.fromARGB(255, 230, 225, 225),
        backgroundColor: Colors.green,
        currentIndex: currentI,
        onTap: changeIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: "Info",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "menu"),
        ],
      ),
    );
  }
}
