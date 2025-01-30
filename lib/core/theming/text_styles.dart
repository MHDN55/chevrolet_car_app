import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  TextStyles._();

  static TextStyle font27WhiteItaliana = GoogleFonts.italiana(
    fontSize: 30,
    color: Colors.white,
  );

  static TextStyle font28WhiteJavanese = const TextStyle(
    fontSize: 28,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font22WhiteBesley = GoogleFonts.besley(
    fontSize: 22,
    color: Colors.white,
  );
  static TextStyle font20WhiteJavanese = GoogleFonts.notoSansJavanese(
    fontSize: 20,
    color: Colors.white,
  );
  static TextStyle font14WhiteJavanese = GoogleFonts.notoSansJavanese(
    fontSize: 14,
    color: Colors.white,
  );

  static TextStyle font12WhiteJavanese = GoogleFonts.notoSansJavanese(
    fontSize: 12,
    color: Colors.white,
  );

  static TextStyle font20WhiteWithOpacity5 = GoogleFonts.notoSansJavanese(
    fontSize: 20,
    color: Colors.white.withOpacity(0.5),
  );
  static TextStyle font20WhiteWithOpacity8 = GoogleFonts.notoSansJavanese(
    fontSize: 20,
    color: Colors.white.withOpacity(0.2),
  );
  static TextStyle font65WhiteWithOpacity2 = GoogleFonts.jacquesFrancois(
    fontSize: 80,
    color: Colors.white.withOpacity(0.2),
  );
  static TextStyle font20grayJcquesFrancois = GoogleFonts.jacquesFrancois(
    fontSize: 11,
    color: const Color(0xff747474),
  );
}
