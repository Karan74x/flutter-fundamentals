import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {}, child: Text("Submit")),

          InkWell(
            onTap: () {},
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(child: Text("Submit")),
            ),
          ),
          // IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          // TextButton(onPressed: () {}, child: Text("Submit")),
          // FilledButton(onPressed: () {}, child: Text("Submit")),
        ],
      ),
    );
  }
}
