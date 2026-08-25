import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  String selectedItem = "BMW";
  String selectedRadioItem = "Male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Buttons Example"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Drop-Down Button
          Center(
            child: DropdownButton(
              borderRadius: BorderRadius.circular(5),
              dropdownColor: Colors.grey,
              focusColor: Colors.blue,
              items: [
                DropdownMenuItem(child: Text("BMW"), value: "BMW"),
                DropdownMenuItem(child: Text("Audi"), value: "Audi"),
                DropdownMenuItem(child: Text("Mahindra"), value: "Mahindra"),
                DropdownMenuItem(child: Text("Bugatti"), value: "Bugatti"),
              ],
              value: selectedItem,
              onChanged: (value) {
                setState(() {
                  selectedItem = value!;
                });
              },
            ),
          ),

          //Radio Button
          RadioListTile(
            title: Text("Male"),
            value: "Male",
            groupValue: selectedRadioItem,
            hoverColor: Colors.greenAccent,
            onChanged: (val) {
              setState(() {
                selectedRadioItem = val!;
              });
            },
          ),
          RadioListTile(
            title: Text("Female"),
            value: "Female",
            groupValue: selectedRadioItem,
            hoverColor: Colors.greenAccent,
            onChanged: (val) {
              setState(() {
                selectedRadioItem = val!;
              });
            },
          ),
        ],
      ),
    );
  }
}
