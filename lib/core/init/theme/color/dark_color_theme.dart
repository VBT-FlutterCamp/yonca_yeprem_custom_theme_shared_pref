import 'package:flutter/material.dart';

import 'i_color_theme.dart';

class DarkColorTheme implements IColorTheme {
  @override
  late final Color? appBarColor;

  @override
  late final Color? backgroundColor;

  @override
  late final Brightness? brightness;

  @override
  late final ColorScheme? colorScheme;

  @override
  final AppColors colors = AppColors();
  
  DarkColorTheme(){
    appBarColor = colors.lushPlains;
    backgroundColor = colors.black;
    brightness = Brightness.dark;
    colorScheme = ColorScheme.dark().copyWith(
      onPrimary: colors.lushPlains,
      onSurface: colors.nuclearBlast
    );
  }
}