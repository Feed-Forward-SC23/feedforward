import 'package:feedforward/customWidgets.dart/newProductList.dart';
import 'package:feedforward/customWidgets.dart/productList.dart';
import 'package:feedforward/customWidgets.dart/spotlight.dart';
import 'package:feedforward/pages/appbar1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/colors.dart';
import '../Constants/constant.dart';

class FreePro extends StatelessWidget {
  const FreePro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount:
              spotlightList.where((element) => element.free == true).length,
          itemBuilder: (context, index) {
            return ItemCard(
              index: index,
              listProduct:
                  spotlightList.where((element) => element.free == true),
            );
          },
        ),
      ),
    );
  }
}

class PaidPage extends StatelessWidget {
  const PaidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount:
              spotlightList.where((element) => element.free == false).length,
          itemBuilder: (context, index) {
            return ItemCard(
              index: index,
              listProduct:
                  spotlightList.where((element) => element.free == false),
            );
          },
        ),
      ),
    );
  }
}
