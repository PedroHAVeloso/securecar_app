import 'package:flutter/material.dart';
import 'package:securecar_app/ui/utils/app_colors.dart';

/// Tema visual do aplicativo.
class AppTheme {
  /// Tema claro.
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.black,
      onPrimary: AppColors.white,
      secondary: AppColors.green,
      onSecondary: AppColors.white,
      error: AppColors.red,
      onError: AppColors.white,
      background: AppColors.white,
      onBackground: AppColors.black,
      surface: AppColors.green,
      onSurface: AppColors.white,
    ),
  );
}
