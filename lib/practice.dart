import 'package:flutter/material.dart';

class HomeScreenPractice extends StatelessWidget {
  const HomeScreenPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(201, 117, 114, 114),
        title: Text(
          "APP BAR EXAMPLE",
          style: TextStyle(color: Color.fromARGB(255, 210, 62, 33)),
        ),
      ),
      body: Center(
        child: Text(
          "This is in body",
          style: TextStyle(
            color: Color.fromARGB(200, 58, 5, 232),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
