import 'package:flutter/material.dart';

class SnackbarExample extends StatelessWidget {
  const SnackbarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text(
          "SnackBar Example",
          style: TextStyle(color: Colors.deepPurple),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("You Are Logged In"),
                backgroundColor: Colors.green,
              ),
            );
          },

          child: Text("Login", style: TextStyle(color: Colors.red)),
        ),
      ),
    );
  }
}
