import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class ColorConstants {}

SizedBox buildHeight(double height) => SizedBox(height: height);
SizedBox buildWidth(double width) => SizedBox(width: width);

TextStyle buildHeading() => GoogleFonts.poppins(
    fontWeight: FontWeight.w600, fontSize: 18, color: black[4]);
TextStyle buildSubheading() => GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      fontSize: 15,
      color: black[4],
    );
TextStyle buildBody() => GoogleFonts.poppins(
    fontWeight: FontWeight.w300, fontSize: 10, color: black[3]);

TextStyle buildAddress() => GoogleFonts.poppins(
      fontWeight: FontWeight.w700,
      fontSize: 12,
      color: black[4],
    );
TextStyle buildAddItem() => GoogleFonts.poppins(
      fontSize: 12,
      color: const Color(0x30000000),
    );
TextStyle buildTag() => GoogleFonts.poppins(fontSize: 12, color: black[4]);
