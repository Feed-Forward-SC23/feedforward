import 'package:feedforward/pages/appbar1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/constant.dart';
import '../customWidgets.dart/newProductList.dart';
import '../customWidgets.dart/spotlight.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({super.key});

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  bool isVeg = true;
  bool isNonVeg = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        const SilverAppBar2(),
      ],
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              buildToggle(),
              buildHeight(30.0),
              Text(
                "Yummy Stuff Near you",
                style: buildHeading(),
              ),
              buildHeight(10.0),
              isVeg
                  ? isNonVeg
                      ? NewProductList(count: spotlightList.length)
                      : VegPro(
                          count: spotlightList
                              .where((element) => element.veg == true)
                              .length,
                        )
                  : isNonVeg
                      ? NonVegPro(
                          count: spotlightList
                              .where((element) => element.veg == false)
                              .length,
                        )
                      : NewProductList(
                          count: spotlightList.length,
                        ),
              buildHeight(10.0),
            ],
          )),
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


// NewProductList(
//                   count: spotlightList.length,
//                 ),