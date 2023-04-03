import 'package:feedforward/pages/appbar1.dart';
import 'package:feedforward/customWidgets.dart/free_paid.dart';
import 'package:feedforward/pages/main_page.dart';
import 'package:feedforward/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/colors.dart';
import '../Constants/constant.dart';
import '../customWidgets.dart/searchBar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int count = 0;
  List screens = [
    const MainPage(),
    const FreePro(),
    const Center(
      child: Text("Form to list down your product"),
    ),
    const PaidPage(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SilverAppBar1(),
        ],
        body: screens[count],
      ),
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
              Icons.money_off_csred_rounded,
              color: black[2],
            ),
            label: "Free",
            activeIcon: Icon(
              Icons.money_off_csred_rounded,
              color: yellow[1],
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: black[2],
            ),
            label: "Add",
            activeIcon: Icon(
              Icons.add,
              color: yellow[1],
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.monetization_on,
              color: black[2],
            ),
            label: "Paid",
            activeIcon: Icon(
              Icons.monetization_on,
              color: yellow[1],
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: black[2],
            ),
            label: "Profile",
            activeIcon: Icon(
              Icons.person,
              color: yellow[1],
            ),
          ),
        ],
      ),
    );
  }
}
