import 'package:feedforward/Constants/colors.dart';
import 'package:feedforward/Constants/constant.dart';
import 'package:feedforward/customWidgets.dart/spotlight.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'itemCard.dart';

class NewProductList extends StatelessWidget {
  const NewProductList({
    super.key,
    required this.count,
    this.isfree,
    this.veg,
  });
  final int count;
  final bool? isfree;
  final bool? veg;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: count,
      itemBuilder: (context, index) {
        return ItemCard(
          listProduct: spotlightList,
          index: index,
        );
      },
    );
  }
}

class VegPro extends StatelessWidget {
  const VegPro({
    super.key,
    required this.count,
  });
  final int count;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: count,
      itemBuilder: (context, index) {
        return ItemCard(
          listProduct: spotlightList.where((element) => element.veg == true),
          index: index,
        );
      },
    );
  }
}

class NonVegPro extends StatelessWidget {
  const NonVegPro({
    super.key,
    required this.count,
  });
  final int count;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: count,
      itemBuilder: (context, index) {
        return ItemCard(
          listProduct: spotlightList.where((element) => element.veg == false),
          index: index,
        );
      },
    );
  }
}
