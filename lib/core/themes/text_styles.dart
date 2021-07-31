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

  static TextStyle get header {
    return TextStyle(
      color: Color.fromRGBO(24, 23, 37, 1),
      fontSize: 26,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle get hint {
    return TextStyle(
      color: Color.fromRGBO(177, 177, 177, 1),
      fontSize: 18,
    );
  }

  static TextStyle get textField {
    return TextStyle(
      color: Color.fromRGBO(3, 3, 3, 1),
      fontSize: 18,
    );
  }

  static TextStyle get textFieldText {
    return TextStyle(
      color: Color.fromRGBO(24, 23, 37, 1),
      fontSize: 18,
    );
  }
}
