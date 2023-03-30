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
            child: Text(
      "Free",
      style: buildHeading(),
    )));
  }
}
