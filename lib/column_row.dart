import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  const ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Block 1
          Row(

            children: [
              // PART 1
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 100,
                  width: 30,
                  color: Colors.red,
                ),
              ),

              // PART 2
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 30,
                      width: 100,
                      color: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 30,
                      width: 100,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),

              //PART 3
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.orange,
                      ),
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.all(4.0),
                     child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.orange,
                        ),
                      ),
                   ),
                ],
              ),
              // PART 4
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 100,
                  width: 30,
                  color: Colors.green,
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}