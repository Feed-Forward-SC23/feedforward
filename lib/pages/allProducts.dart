import 'package:feedforward/pages/appbar1.dart';
import 'package:flutter/material.dart';

import '../Constants/constant.dart';
import '../customWidgets.dart/newProductList.dart';
import '../customWidgets.dart/spotlight.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        const SilverAppBar(),
      ],
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              Text(
                "Yummy Stuff Near you",
                style: buildHeading(),
              ),
              buildHeight(10.0),
              Expanded(
                  child: NewProductList(
                count: spotlightList.length,
              )),
            ],
          )),
    ));
  }
}
