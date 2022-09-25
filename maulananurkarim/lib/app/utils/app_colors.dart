import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFFFDB915);

  static const Color lightColor = Color(0xFFE9EBEC);
  static const Color lightFillColor = Color(0xFFFFFFFF);
  static const Color lightGreyColor = Color(0xFF3D3D3D);

  static const Color darkColor = Color(0xFF0C151D);
  static const Color darkFillColor = Color(0xFF171F26);
  static const Color darkGreyColor = Color(0xFFA3ABB2);

  //http://mcg.mbitson.com/#!?colormap=%23fdb915&themename=colormap
  static const Map<int, Color> colorMap = {
    50: Color(0xFFFDEEE4),
    100: Color(0xFFFAD4BC),
    200: Color(0xFFF6B890),
    300: Color(0xFFF29B63),
    400: Color(0xFFF08541),
    500: Color(colorPrimaryMaterial),
    600: Color(0xFFEB681C),
    700: Color(0xFFE85D18),
    800: Color(0xFFE55313),
    900: Color(0xFFE0410B),
  };

  static const int colorPrimaryMaterial = 0xFFED7020;
  static const MaterialColor primaryMaterial = MaterialColor(colorPrimaryMaterial, colorMap);
}
