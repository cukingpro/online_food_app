import 'package:flutter/material.dart';

abstract class TextStyles {
  static TextStyle get heading {
    return TextStyle(
      color: Colors.white,
      fontSize: 48,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle get description {
    return TextStyle(
      color: Color.fromRGBO(124, 124, 124, 1),
      fontSize: 16,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle get longButton {
    return TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    );
  }
}
