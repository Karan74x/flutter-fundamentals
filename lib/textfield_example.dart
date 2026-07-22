import 'package:flutter/material.dart';

class TextfieldExample extends StatelessWidget {
  const TextfieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    // CREATE THE CONTROLLER
    TextEditingController name = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      body: Column(
        children: [
          // allows the user to type text
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 300,
              // For name input
              child: TextField(
                controller: name, //Link the controller here
                decoration: InputDecoration(
                  // Floating label text above/inside the input field
                  label: Text("Name"),

                  // Icons
                  prefixIcon: Icon(Icons.lock),

                  //Border when clicked
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  // Border without clicked/ not focused
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 300,
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                  label: Text("Password"),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  // When border is clicked
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
