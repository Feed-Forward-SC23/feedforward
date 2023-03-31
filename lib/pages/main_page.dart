import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/colors.dart';
import '../Constants/constant.dart';
import '../customWidgets.dart/categoriesUI.dart';
import '../customWidgets.dart/newProductList.dart';
import '../customWidgets.dart/spotlight.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  // final String email;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isVeg = true;
  bool isNonVeg = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        children: [
          buildToggle(),
          // buildHeight(30.0),
          Text("Categories", style: buildHeading()),
          buildHeight(10),
          CategoriesGrid(
            height: height,
            width: width,
          ),
          buildHeight(30.0),
          Row(
            children: [
              Text("Spotlight", style: buildHeading()),
              const Spacer(),
              InkWell(
                onTap: () => Navigator.pushNamed(context, '/allPro'),
                child: Text(
                  "Show more >",
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: cyan[0],
                  ),
                ),
              ),
            ],
          ),
          isVeg
              ? isNonVeg
                  ? NewProductList(
                      count: spotlightList.length - 13,
                    )
                  : const VegPro(
                      count: 3,
                    )
              : isNonVeg
                  ? const NonVegPro(
                      count: 3,
                    )
                  : NewProductList(
                      count: spotlightList.length - 13,
                    ),
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
          value: isVeg,
          onChanged: (value) {
            setState(
              () {
                isVeg = value;
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
          value: isNonVeg,
          onChanged: (value) {
            setState(
              () {
                isNonVeg = value;
              },
            );
          },
        ),
      ],
    );
  }
}

// ------------ Floating action button ------------------

// floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
// floatingActionButton: FloatingActionButton(
//   onPressed: () {
//     debugPrint("The Floating Button was Pressed");
//   },
//   child: const Icon(Icons.add_rounded),
// ),

// ListView(
//   children: [
//     buildToggle(),
//     // buildHeight(30.0),
//     Text("Categories", style: buildHeading()),
//     buildHeight(10),
//     CategoriesGrid(
//       height: height,
//       width: width,
//     ),
//     buildHeight(30.0),
//     Row(
//       children: [
//         Text("Spotlight", style: buildHeading()),
//         const Spacer(),
//         InkWell(
//           onTap: () => Navigator.pushNamed(context, '/allPro'),
//           child: Text(
//             "Show more >",
//             style: GoogleFonts.poppins(
//               fontSize: 10,
//               fontWeight: FontWeight.w500,
//               color: cyan[0],
//             ),
//           ),
//         ),
//       ],
//     ),
//     NewProductList(
//       count: spotlightList.length - 11,
//       scroll: true,
//       vertical: true,
//     ),
//     buildHeight(10.0),
//   ],
// ),
