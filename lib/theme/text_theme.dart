import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'color_theme.dart';

class TextThemes {
  static var productsName = GoogleFonts.lato(
    textStyle: TextStyle(
        fontSize: 9.0.sp,
        height: getTextHeight(10, 20),
        color: ColorPalette.white),
  );

  static var productsPrice = GoogleFonts.lato(
    textStyle: TextStyle(fontSize: 7.0.sp, color: ColorPalette.white),
  );

  static var productsPiceUnderline = TextStyle(
      decoration: TextDecoration.underline,
      fontSize: 6.0.sp,
      color: ColorPalette.white);

  static var productsPriceSom = GoogleFonts.lato(
    textStyle: TextStyle(
        decoration: TextDecoration.underline,
        fontSize: 8,
        height: getTextHeight(8, 25),
        color: ColorPalette.white),
  );
  static var selectedProductprice = GoogleFonts.lato(
    textStyle: TextStyle(
        fontSize: 15.0.sp,
        height: getTextHeight(10, 20),
        color: ColorPalette.productsCardSelectedBasket),
  );
  static var paymentTitle = GoogleFonts.lato(
    textStyle: TextStyle(
        fontSize: 10.0.sp,
        fontWeight: FontWeight.w600,
        color: ColorPalette.productsCardName),
  );
}

getTextHeight(double size, double height) {
  return height / size;
}
