import 'package:first_flutter_app/Revision/BottomNavigation.dart';
import 'package:flutter/material.dart';

class Snackbar extends StatelessWidget {
  const Snackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(" Button is Clicked")));
            },
            child: Text("Show Snack Bar"),
          ),
          SizedBox(height: 25),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottomNav()),
              );
            },
            icon: Icon(Icons.adb_outlined),
          ),
        ],
      ),
    );
  }
}
