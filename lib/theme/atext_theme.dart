import 'package:flutter/material.dart';
import 'package:it_megacom_hackthon/theme/acolor_theme.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class AtextThemes {
  static var productsName = GoogleFonts.lato(
    textStyle: TextStyle(fontSize: 10, color: AcolorPalette.authback),
  );
  static TextStyle text = GoogleFonts.lato(
    textStyle: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.normal,
        color: AcolorPalette.textforgot),
  );
  static TextStyle title = GoogleFonts.lato(
    textStyle: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.normal,
        color: AcolorPalette.textforgot),
  );
  static TextStyle hintTextField = GoogleFonts.lato(
    textStyle: TextStyle(fontSize: 5.0.sp, color: AcolorPalette.titleTf),
  );
  static TextStyle titleTextField = GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 10.0.sp,
          fontWeight: FontWeight.normal,
          color: AcolorPalette.textforgot));

  static TextStyle titlePage = GoogleFonts.lato(
    textStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: AcolorPalette.textforgot),
  );
  static TextStyle buttonText = GoogleFonts.lato(
    textStyle: TextStyle(fontSize: 11, color: AcolorPalette.titleTf),
  );
  static TextStyle titleofProduct = GoogleFonts.lato(
    textStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        color: AcolorPalette.textforgot),
  );
  static TextStyle passwordRequired = GoogleFonts.lato(
    textStyle: TextStyle(fontSize: 12, color: AcolorPalette.titleTf),
  );
  static TextStyle sumfDebt = GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 8.0.sp,
          fontWeight: FontWeight.bold,
          color: AcolorPalette.textforgot));
  static TextStyle listDebt = GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          color: AcolorPalette.textforgot));
  static TextStyle password = GoogleFonts.lato(
    textStyle: TextStyle(fontSize: 11, color: AcolorPalette.textforgot),
  );
}
