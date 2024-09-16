import 'package:flutter/material.dart';
import 'app_pallete.dart';

class AppTheme {
  static final darkThemeMode = ThemeData.light().copyWith(
    // useMaterial3: ,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.whiteColor,
      elevation: 0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(
        color: AppColors.hintTextColor,
        fontWeight: FontWeight.w300,
        fontFamily: 'Poppins',
        fontSize: 16,
      ),
      iconColor: AppColors.iconColor,
      filled: true,
      fillColor: AppColors.whiteColor,
      errorStyle: const TextStyle(
        color: AppColors.redColor,
        fontFamily: 'Poppins',
      ),
      border: border(),
      enabledBorder: border(),
      focusedBorder: border(color: AppColors.borderColor),
      errorBorder: border(),
      focusedErrorBorder: border(color: AppColors.borderColor),
    ),
  );

  static border({Color? color}) => OutlineInputBorder(
        borderSide: BorderSide(
          color: color ?? AppColors.borderColor,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(8),
      );
}

