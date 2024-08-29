import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color pink = Color(0xFFEF5DA8);
  static const Color lightpink = Color(0xFFFCDDEC);
  static const Color purple = Color(0xFFAEAFF7);
  static const Color orange = Color(0xFFF09E54);
  static const Color lightteal = Color(0xFFA0E3E2);

  static const Color textColor = Color(0xFF371B34);

  static const Color task1 = Color(0xFFFCDDEC);
  static const Color task2 = Color(0xFFFBE2CC);
  static const Color task3 = Color(0xFF84EAB3);
}

class FontSizes {
  static const extraSmall = 15.0;
  static const small = 20.0;
  static const standard = 22.0;
  static const large = 25.0;
  static const extraLarge = 30.0;
  static const doubleExtraLarge = 35.0;
  static const tripleExtraLarge = 40.0;
}

class AppTheme {
  static ThemeData get lightheme {
    return ThemeData(
      useMaterial3: true,
      primaryColor: const Color(0xFFAEAFF7),
      focusColor: const Color(0xFF371B34),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        bodySmall: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.small,
          color: Colors.white,
        ),
        bodyMedium: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.standard,
          color: DefaultColors.textColor,
        ),
        bodyLarge: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.large,
          color: DefaultColors.textColor,
          fontWeight: FontWeight.w500,
        ),
        titleSmall: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.standard,
          color: DefaultColors.textColor,
        ),
        titleMedium: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.extraLarge,
          color: DefaultColors.textColor,
        ),
        titleLarge: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.doubleExtraLarge,
          color: DefaultColors.textColor,
          fontWeight: FontWeight.bold,
        ),
        labelSmall: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.extraSmall,
          color: DefaultColors.textColor,
        ),
        labelMedium: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.extraLarge,
          color: DefaultColors.textColor,
        ),
        labelLarge: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.large,
          color: DefaultColors.textColor,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: GoogleFonts.alegreya(
          fontSize: FontSizes.tripleExtraLarge,
          color: const Color(0xFFFAFAFA),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
