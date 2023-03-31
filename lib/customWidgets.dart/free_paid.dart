import 'package:feedforward/customWidgets.dart/spotlight.dart';
import 'package:flutter/material.dart';
import 'itemCard.dart';

class FreePro extends StatelessWidget {
  const FreePro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
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
      ),
    );
  }
}

class PaidPage extends StatelessWidget {
  const PaidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
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
      ),
    );
  }
}
