import 'package:flutter/material.dart';

import './LoginController.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String userData = "";

  final controller = Logincontroller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("API Example"),
        backgroundColor: Colors.blueGrey,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final user = await controller.getUser();

                setState(() {
                  userData =
                      "ID: ${user.id ?? ""}\n"
                      "Name: ${user.name ?? ""}\n"
                      "Username: ${user.username ?? ""}\n"
                      "Email: ${user.email ?? ""}";
                });
              },
              child: Text("View User"),
            ),
            SizedBox(height: 30),
            Text(userData),
          ],
        ),
      ),
    );
  }
}
