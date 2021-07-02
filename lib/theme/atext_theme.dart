import 'package:flutter/material.dart';
import 'package:it_megacom_hackthon/theme/acolor_theme.dart';

import 'package:google_fonts/google_fonts.dart';

class AtextThemes {
  static var productsName = GoogleFonts.lato(
    textStyle: TextStyle(fontSize: 10, color: AcolorPalette.authback),
  );
  static TextStyle text = TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.normal,
      color: AcolorPalette.textforgot);
  static TextStyle title = TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.normal,
      color: AcolorPalette.textforgot);
}
