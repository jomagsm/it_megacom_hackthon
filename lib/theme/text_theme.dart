import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_theme.dart';

class TextThemes {
  static var productsName = GoogleFonts.lato(
    textStyle: TextStyle(
        fontSize: 10, height: getTextHeight(10, 20), color: ColorPalette.white),
  );
  static var productsPrice = GoogleFonts.lato(
    textStyle: TextStyle(fontSize: 10, color: ColorPalette.white),
  );
  static var productsPriceSom = GoogleFonts.lato(
    textStyle: TextStyle(
        decoration: TextDecoration.underline,
        fontSize: 8,
        height: getTextHeight(8, 25),
        color: ColorPalette.white),
  );
}

getTextHeight(double size, double height) {
  return height / size;
}
