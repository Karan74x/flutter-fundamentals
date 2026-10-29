import 'package:flutter/material.dart';

class Buttonsall extends StatelessWidget {
  Buttonsall({super.key});

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),
            SizedBox(height: 20),
            InkWell(
              onTap: () {},
              child: Container(
                height: 25,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Text("InkWell Button")),
              ),
            ),
            SizedBox(height: 20),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.browser_updated_outlined),
            ),
            TextButton(onPressed: () {}, child: Text("Text Button")),
            FilledButton(onPressed: () {}, child: Text("Filled Button")),
            SizedBox(height: 80),
            Image.network(
              "https://imgs.search.brave.com/yrUlVNInO2ld3ddSL9iILRv0j86QgunXxxcxamV8uFU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9oZC53/YWxscGFwZXJzd2lk/ZS5jb20vdGh1bWJz/L2RhbmllbF9jcmFp/Z19hc19qYW1lc19i/b25kLXQxLmpwZw",
              height: 390,
              width: 550,
              fit: BoxFit.cover,
            ),
            
            CircleAvatar(
              backgroundImage: NetworkImage(
                "https://imgs.search.brave.com/BiOeo7-lXAJODcLEvW2RGPIHaWTmj5tf2YtZsWIf2SY/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93YWxs/dXAubmV0L3dwLWNv/bnRlbnQvdXBsb2Fk/cy8yMDE2LzAxLzIz/NzIwLUphbWVzX0Jv/bmQtRGFuaWVsX0Ny/YWlnLTMwMHgyMDAu/anBn",
              ),
              radius: 50,
            ),
            Image.asset(
              "assets/images/adonisss.png",
              height: 350,
              width: 550,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
