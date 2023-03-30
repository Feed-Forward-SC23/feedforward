import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../Constants/colors.dart';
import '../Constants/constant.dart';

AppBar buildMainAppBar() {
  return AppBar(
    actions: [
      buildWidth(20.0),
      Icon(
        Icons.location_on_sharp,
        color: yellow[1],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeight(10.0),
          Text(
            "Address:",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: black[4],
            ),
          ),
          Text(
            "5 star boys hostel, GHRCE",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              fontSize: 10,
            ),
          )
        ],
      ),
      const Spacer(),
      const CircleAvatar(
        backgroundImage: AssetImage('assets/profile.png'),
      ),
      buildWidth(20.0),
    ],
  );
}
