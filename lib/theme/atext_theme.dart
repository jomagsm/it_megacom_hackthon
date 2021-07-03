import 'package:flutter/material.dart';
import 'package:it_megacom_hackthon/theme/acolor_theme.dart';

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
    textStyle: TextStyle(fontSize: 11, color: AcolorPalette.titleTf),
  );
  static TextStyle titleTextField = GoogleFonts.lato(
    textStyle: TextStyle(
        fontSize: 11,
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
}
