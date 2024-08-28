import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color pink = Color(0xFFEA2B83);
  static const Color lightpink = Color(0xFFFCDDEC);
  static const Color purple = Color(0xFF8E8FF8);
  static const Color orange = Color(0xFFF18F3B);
  static const Color lightteal = Color(0xFF58D5D4);
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
      textTheme: TextTheme(
        bodySmall: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.small,
          color: Colors.white,
        ),
        bodyMedium: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.standard,
          color: Colors.grey,
        ),
        bodyLarge: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.large,
          color: Colors.white,
        ),
        titleSmall: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.large,
          color: Colors.black,
        ),
        titleMedium: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.extraLarge,
          color: Colors.black,
        ),
        titleLarge: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.doubleExtraLarge,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        labelSmall: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.small,
          color: Colors.black,
        ),
        labelMedium: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.extraLarge,
          color: Colors.black,
        ),
        labelLarge: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.doubleExtraLarge,
          color: Colors.black,
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
