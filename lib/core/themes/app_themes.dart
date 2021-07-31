import 'package:flutter/material.dart';
import 'package:online_food_app/core/values/colors.dart';

class AppThemes {
  static final light = ThemeData.light().copyWith(
    primaryColor: AppColors.green,
    textTheme: TextTheme(),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.black,
      unselectedIconTheme: IconThemeData(color: Colors.black),
      selectedItemColor: AppColors.green,
      selectedIconTheme: IconThemeData(color: AppColors.green),
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
  );
  static final dark = ThemeData.dark().copyWith();
}
