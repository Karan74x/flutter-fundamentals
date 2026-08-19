import 'package:first_flutter_app/snackBar_example.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  //splash screen
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SnackbarExample()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.local_hospital_outlined, size: 65, color: Colors.green),
            SizedBox(height: 25),
            Text(
              "HealthNova",
              style: TextStyle(color: Colors.indigoAccent, fontSize: 30),
            ),
            SizedBox(height: 20),
            Text(
              "Loading...",
              style: TextStyle(color: Colors.orange[700], fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
