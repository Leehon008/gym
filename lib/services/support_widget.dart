import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle headlineStyle(double fontSize) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }

  static TextStyle mediumTextStyle(double fontSize, [Color? textColor]) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      color: textColor ?? Colors.black,
    );
  }

  static TextStyle whiteBoldTextStyle(double fontSize, [Color? textColor]) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: textColor ?? Colors.white,
    );
  }
}
