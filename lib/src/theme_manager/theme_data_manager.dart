import 'package:flutter/material.dart';
import 'package:sarang/src/theme_manager/color_manager.dart';
import 'package:sarang/src/theme_manager/font_manager.dart';

ThemeData getApplicationThemeData() {
  return ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: ColorManager.primary,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorManager.primary,
      elevation: 0,
    ),
    fontFamily: FontFamilyConstant.fontFamily,
  );
}
