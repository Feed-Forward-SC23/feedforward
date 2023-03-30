import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorConstants {}

SizedBox buildHeight(double height) => SizedBox(height: height);
SizedBox buildWidth(double width) => SizedBox(width: width);

TextStyle buildHeading() =>
    GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18);
