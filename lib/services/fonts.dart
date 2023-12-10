import 'package:flutter/material.dart';

sealed class KTFonts{
  static const String rubikFonts = "Rubik";
  static const String roadNumberFonts = "RoadNumbers";
  static TextStyle customStyle({
    double fontSize = 18,
    FontWeight fontWeight = FontWeight.w500,
    Color color = Colors.grey,
    String fontFamily = "RoadNumbers",
    double height = 1,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      height: height,
      color: color,
    );
  }
}