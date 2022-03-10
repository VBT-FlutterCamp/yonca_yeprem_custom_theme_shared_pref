import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'i_text_theme.dart';

class DarkTextTheme implements ITextTheme {
  @override
  TextStyle? body1;

  @override
  String? fontFamily;

  @override
  TextStyle? headline4;

  @override
  TextStyle? headline6;

  @override
  Color? primaryColor;

  DarkTextTheme(this.primaryColor){
    body1 = TextStyle(fontSize: 17);
    headline4 = TextStyle(fontSize:13, fontWeight: FontWeight.w500);
    headline6 = TextStyle(fontSize:21, fontWeight: FontWeight.w700);
    fontFamily = GoogleFonts.lato().fontFamily;
  }
  
}
