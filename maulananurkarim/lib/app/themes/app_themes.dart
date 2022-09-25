import 'package:flutter/material.dart';

import '../utils/app_utils.dart';

class AppThemes {
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: AppColors.lightColor,
    fontFamily: AppFont.fontFamily,
    primarySwatch: AppThemes.primarySwatch,
    elevatedButtonTheme: elevatedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.darkColor,
    fontFamily: AppFont.fontFamily,
    primarySwatch: AppThemes.primarySwatch,
    elevatedButtonTheme: elevatedButtonTheme,
  );

  static ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0.0),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
      backgroundColor: MaterialStateProperty.all(AppColors.primaryColor),
      textStyle: MaterialStateProperty.all(
        TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: AppFont.fontFamily,
        ),
      ),
    ),
  );

  static const MaterialColor primarySwatch = AppColors.primaryMaterial;
}
