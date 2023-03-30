import 'package:feedforward/pages/appbar1.dart';
import 'package:feedforward/pages/main_page.dart';
import 'package:feedforward/pages/profile.dart';
import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int count = 0;
  List screens = [
    const MainPage(),
    const Center(
      child: Text("List of Free items"),
    ),
    const Center(
      child: Text("Form to list down your product"),
    ),
    const Center(
      child: Text("List of Paid items"),
    ),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMainAppBar(),
      body: screens[count],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: count,
        onTap: (index) => setState(() => count = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              color: black[2],
            ),
            label: "Home",
            activeIcon: Icon(
              Icons.home_rounded,
              color: yellow[1],
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
                color: black[2],
              ),
              label: "Free"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                color: black[2],
              ),
              label: "add"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
                color: black[2],
              ),
              label: "Paid"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_rounded,
                color: black[2],
              ),
              label: "Profile"),
        ],
      ),
    );
  }
}
