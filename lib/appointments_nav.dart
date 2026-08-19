import 'package:flutter/material.dart';

class AppointmentsNav extends StatefulWidget {
  AppointmentsNav({super.key});

  @override
  State<AppointmentsNav> createState() => _AppointmentsNavState();
}

class _AppointmentsNavState extends State<AppointmentsNav> {
  int currentI = 0;

  void changeindex(int index) {
    setState(() {
      currentI = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("My Appointments", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: Icon(Icons.arrow_back, color: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData(color: Colors.orangeAccent),
        onTap: changeindex,
        currentIndex: currentI,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            backgroundColor: Colors.green,
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline_sharp),
            backgroundColor: Colors.green,
            label: "Booking",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_sharp),
            backgroundColor: Colors.green,
            label: "Offer",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_4_outlined),
            backgroundColor: Colors.green,
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
