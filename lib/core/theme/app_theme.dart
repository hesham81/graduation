import 'package:flutter/material.dart';
import 'package:tgo/core/theme/app_colors.dart';

abstract class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.primary,

  );
}