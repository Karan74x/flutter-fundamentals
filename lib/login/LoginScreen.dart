import 'package:flutter/material.dart';

import '../api/ApiServices.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  String userData = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("API Example", style: TextStyle(color: Colors.black87)),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final user = await Apiservices().getData();

                setState(() {
                  userData =
                      "ID: ${user.id ?? ""}\n"
                      "Name: ${user.name ?? ""}\n"
                      "Username: ${user.username ?? ""}\n"
                      "Email: ${user.email ?? ""}";
                });
              },
              child: Text(
                "View Users",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            SizedBox(height: 50),
            Container(
              width: 350,
              height: 200,
              child: Center(
                child: Text(
                  userData,
                  style: TextStyle(color: Colors.limeAccent, fontSize: 22),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
