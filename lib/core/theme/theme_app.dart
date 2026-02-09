import 'package:flutter/material.dart';
import 'package:habit_tracker/core/theme/colors_app.dart';

class ThemeApp {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: ColorsApp.primary,
      secondary: ColorsApp.accent,
      surface: ColorsApp.surface,
      error: ColorsApp.error,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: ColorsApp.textPrimary,
      onError: Colors.white,
    ),
    scaffoldBackgroundColor: ColorsApp.background,
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorsApp.primary,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    cardTheme: const CardThemeData(
      color: ColorsApp.surface,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ),
    dividerColor: ColorsApp.divider,
    disabledColor: ColorsApp.disabled,

    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: ColorsApp.textPrimary,
      ),

      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: ColorsApp.textPrimary,
      ),

      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: ColorsApp.textPrimary,
      ),

      bodyLarge: TextStyle(fontSize: 16, color: ColorsApp.textPrimary),

      bodyMedium: TextStyle(fontSize: 14, color: ColorsApp.textSecondary),

      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),

      labelSmall: TextStyle(fontSize: 12, color: ColorsApp.accent),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: ColorsApp.primary,
      foregroundColor: Colors.white,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: ColorsApp.primary,
      linearTrackColor: ColorsApp.primarySoft,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: ColorsApp.primary,
        side: const BorderSide(color: ColorsApp.primarySoft),
      ),
    ),
  );
}
