import 'core/init/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'feature/view/homepage_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeManager.createThemeData(AppThemeLight()),
      home: const HomepageView(),
    );
  }
}
