import 'package:feedforward/Constants/constant.dart';
import 'package:feedforward/customWidgets.dart/categoriesUI.dart';
import 'package:feedforward/services/auth/google_sign_in.dart';
import 'package:feedforward/services/productService/productApi.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../Constants/colors.dart';
import '../customWidgets.dart/productList.dart';
import '../customWidgets.dart/searchBar.dart';
import 'profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  // final String email;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool _vegValue = true;
  bool _nonvegValue = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final gridHeight = ((width - 60) * 2 / 3) + 10;

    return Scaffold(
        // ------------ Floating action button ------------------

        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     debugPrint("The Floating Button was Pressed");
        //   },
        //   child: const Icon(Icons.add_rounded),
        // ),

        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        children: [
          buildHeight(10.0),
          const SearchBar(),
          buildHeight(15.0),
          buildToggle(),
          buildHeight(30.0),
          Text("Categories", style: buildHeading()),
          buildHeight(10),
          CategoriesGrid(
            height: height,
            width: width,
          ),
          buildHeight(30.0),
          Text("Spotlight", style: buildHeading()),
          const Expanded(child: ProductList()),
          buildHeight(10.0),
        ],
      ),
    ));
  }

  Row buildToggle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          height: 25,
          width: 25,
          child: ImageIcon(
            AssetImage("assets/logos/veg logo.png"),
            color: Colors.green,
          ),
        ),
        CupertinoSwitch(
          value: _vegValue,
          onChanged: (value) {
            setState(
              () {
                _vegValue = value;
              },
            );
          },
        ),
        buildWidth(10.0),
        const SizedBox(
          height: 25,
          width: 25,
          child: ImageIcon(
            AssetImage("assets/logos/non-veg logo.png"),
            color: Colors.red,
          ),
        ),
        CupertinoSwitch(
          value: _nonvegValue,
          onChanged: (value) {
            setState(
              () {
                _nonvegValue = value;
              },
            );
          },
        ),
      ],
    );
  }
}
