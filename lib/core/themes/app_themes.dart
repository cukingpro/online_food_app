import 'package:flutter/material.dart';
import 'package:online_food_app/core/values/colors.dart';

class AppThemes {
  static final light = ThemeData.light().copyWith(
    primaryColor: AppColors.green,
    textTheme: TextTheme(),
  );
  static final dark = ThemeData.dark().copyWith();
}
