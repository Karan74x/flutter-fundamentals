import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(173, 1, 28, 2),
        title: const Text(
          "Image Example",
          style: TextStyle(color: Color.fromARGB(255, 180, 218, 13)),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Circle Avatar
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1505142468610-359e7d316be0?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D",
                ),
                radius: 50,
              ),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/gratitude.png"),
                radius: 50,
              ),
              // Network Image - BIGGER
              Image.network(
                "https://images.unsplash.com/photo-1472396961693-142e6e269027?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bmF0dXJlfGVufDB8fDB8fHww",
                width: 400, // ← Full width
                height: 400, // ← Bigger height
                fit: BoxFit.cover,
              ),
              // Asset Image - BIGGER
              Image.asset(
                "assets/images/gratitude.png",
                width: 400, // ← Full width
                height: 400, // ← Bigger height
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
