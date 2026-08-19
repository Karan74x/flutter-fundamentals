import 'package:flutter/material.dart';

class Shapespractice extends StatelessWidget {
  const Shapespractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ================= BLOCK 1 =================
          Row(
            children: [
              // Red Rectangle
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 100, width: 50, color: Colors.red),
              ),

              // Blue Boxes
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 50,
                      width: 100,
                      color: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 50,
                      width: 100,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),

              // Orange Circles
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),

              // Green Rectangle
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 100, width: 50, color: Colors.green),
              ),
            ],
          ),

          // ================= BLOCK 2 =================
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 300,
                      color: Colors.purple,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 300,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // ================= BLOCK 3 =================
          Row(
            children: [
              // Grey Boxes
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 50, width: 80, color: Colors.grey),
                  ), 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 50, width: 80, color: Colors.grey),
                  ),
                ],
              ),

              // Red Vertical Boxes
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(height: 80, width: 30, color: Colors.red),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(height: 80, width: 30, color: Colors.red),
                  ),
                ],
              ),

              // Blue Boxes
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 50, width: 70, color: Colors.blue),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 50, width: 70, color: Colors.blue),
                  ),
                ],
              ),

              // Black Boxes
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 80,
                      width: 50,
                      color: Colors.black54,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 80,
                      width: 50,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
