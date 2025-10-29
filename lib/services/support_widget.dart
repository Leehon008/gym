import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle headlineStyle(double fontSize) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }

  static TextStyle mediumTextStyle(double fontSize) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    );
  }
}
