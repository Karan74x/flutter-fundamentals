import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  Textfield({super.key});
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Login",
            style: TextStyle(
              backgroundColor: Colors.white,
              fontSize: 30,
              color: Colors.red,
            ),
          ),

          SizedBox(height: 25),

          Center(
            child: SizedBox(
              height: 50,
              width: 300,
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                  hintText: "Enter Your Name",
                  prefixIcon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.limeAccent,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 25),
          //Password
          Center(
            child: SizedBox(
              height: 50,
              width: 300,
              child: TextField(
                obscureText: true,
                controller: password,
                decoration: InputDecoration(
                  // hintText: "Enter Your Password",
                  labelText: "Password", //Text that goes up after clicked
                  prefixIcon: Icon(Icons.password_sharp),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.limeAccent,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () => {
              print("Name: ${name.text}"),
              print("Password: ${password.text}"),

              // ScaffoldMessenger.of(
              //   context,
              // ).showSnackBar(SnackBar(content: Text("Welcome ${name.text}"))),
            },
            child: Container(
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(child: Text("SUBMiT")),
            ),
          ),
        ],
      ),
    );
  }
}
