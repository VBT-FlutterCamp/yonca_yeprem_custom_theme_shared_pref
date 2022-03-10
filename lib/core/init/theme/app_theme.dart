import 'package:custom_theme_example/core/init/theme/color/dark_color_theme.dart';
import 'package:custom_theme_example/core/init/theme/color/i_color_theme.dart';
import 'package:custom_theme_example/core/init/theme/color/light_color_theme.dart';
import 'package:custom_theme_example/core/init/theme/text/dark_text_theme.dart';
import 'package:custom_theme_example/core/init/theme/text/i_text_theme.dart';
import 'package:custom_theme_example/core/init/theme/text/light_text_theme.dart';
import 'package:flutter/material.dart';

abstract class ITheme {
  ITextTheme get textTheme;
  IColorTheme get colorTheme;
}

class AppThemeLight extends ITheme {
  @override
  IColorTheme get colorTheme => LightColorTheme();

  @override
  ITextTheme get textTheme => LightTextTheme(colorTheme.colors.nuclearBlast);
}

class AppThemeDark extends ITheme {
  @override
  IColorTheme get colorTheme => DarkColorTheme();

  @override
  ITextTheme get textTheme => DarkTextTheme(colorTheme.colors.lushPlains);
}

abstract class ThemeManager {
  static ThemeData createThemeData(ITheme theme) {
    return ThemeData(
        fontFamily: theme.textTheme.fontFamily,
        textTheme: TextTheme(
                headline6: theme.textTheme.headline6,
                headline4: theme.textTheme.headline4,
                bodyText1: theme.textTheme.body1)
            .apply(bodyColor: theme.textTheme.primaryColor),
        appBarTheme: AppBarTheme(color: theme.colorTheme.appBarColor),
        colorScheme: theme.colorTheme.colorScheme);
  }
}
