import 'package:flutter/material.dart';

abstract class ITextTheme{
  String? fontFamily;
  TextStyle? body1;
  TextStyle? headline4;
  TextStyle? headline6;
  final Color? primaryColor;

  ITextTheme(this.primaryColor);
  
}