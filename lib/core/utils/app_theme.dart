import 'package:aafiqah_portfolio/core/index.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get dark => ThemeData(
    colorScheme: ColorScheme.dark(primary: AppColors.primary),
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.primaryDark,
    appBarTheme: AppBarTheme(color: AppColors.primaryDark),
  );
}
