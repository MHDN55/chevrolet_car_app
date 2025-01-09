import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  TextStyles._();

  static TextStyle font27WhiteItaliana = GoogleFonts.italiana(
    fontSize: 27,
    color: Colors.white,
  );

  static TextStyle font28WhiteJavanese = GoogleFonts.notoSansJavanese(
    fontSize: 28,
    color: Colors.white,
    decoration: TextDecoration.underline,
    decorationColor: Colors.white,
  );
}
