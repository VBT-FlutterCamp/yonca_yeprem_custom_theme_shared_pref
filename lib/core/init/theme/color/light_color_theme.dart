import 'package:flutter/material.dart';

import 'i_color_theme.dart';

class LightColorTheme implements IColorTheme {
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
  
  LightColorTheme(){
    appBarColor = colors.livid;
    backgroundColor = colors.queerBlue;
    brightness = Brightness.light;
    colorScheme = ColorScheme.light().copyWith(
      onPrimary: colors.livid,
      onSurface: colors.ottomanRed
    );
  }
}