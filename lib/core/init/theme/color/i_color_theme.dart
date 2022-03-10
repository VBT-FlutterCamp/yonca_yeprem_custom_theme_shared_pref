import 'package:flutter/material.dart';


//Daha sonra değişmeyeceği için immutable kullanılabilir.
@immutable
class AppColors {
  final livid = const Color(0xff6281ca);
  final queerBlue = const Color(0xff8da8e8);
  final black = const Color(000000);
  final ottomanRed = const Color(0xffec2222);
  final lushPlains = const Color(0xff1dc11a);
  final nuclearBlast = const Color(0xffbbff00);
}

abstract class IColorTheme {
  AppColors get colors;
  Color? backgroundColor;
  Color? appBarColor;
  Brightness? brightness;
  ColorScheme? colorScheme;
}
