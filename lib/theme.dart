import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hanime_app/constants/constants.dart';

class HanimeTheme {
  static ThemeData darkTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        error: const Color.fromRGBO(220, 38, 38, 1),
        surface: kBlackColor,
        seedColor: const Color.fromRGBO(249, 203, 85, 1),
        primary: const Color.fromRGBO(249, 203, 85, 1),
      ),
      fontFamily: GoogleFonts.reggaeOne().fontFamily,
      fontFamilyFallback: GoogleFonts.reggaeOne().fontFamilyFallback,
      textTheme: TextTheme(
        bodySmall: GoogleFonts.reggaeOne(color: kWhiteColor),
        bodyMedium: GoogleFonts.reggaeOne(color: kWhiteColor),
        bodyLarge: GoogleFonts.reggaeOne(color: kWhiteColor),
        displaySmall: GoogleFonts.reggaeOne(color: kWhiteColor),
        displayMedium: GoogleFonts.reggaeOne(color: kWhiteColor),
        displayLarge: GoogleFonts.reggaeOne(color: kWhiteColor),
        headlineSmall: GoogleFonts.reggaeOne(color: kWhiteColor),
        headlineMedium: GoogleFonts.reggaeOne(color: kWhiteColor),
        headlineLarge: GoogleFonts.reggaeOne(color: kWhiteColor),
        labelSmall: GoogleFonts.reggaeOne(color: kWhiteColor),
        labelMedium: GoogleFonts.reggaeOne(color: kWhiteColor),
        labelLarge: GoogleFonts.reggaeOne(color: kWhiteColor),
        titleSmall: GoogleFonts.reggaeOne(color: kWhiteColor),
        titleMedium: GoogleFonts.reggaeOne(color: kWhiteColor),
        titleLarge: GoogleFonts.reggaeOne(color: kWhiteColor),
      ),
    );
  }

  static ThemeData lightTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.light,
        error: const Color.fromRGBO(220, 38, 38, 1),
        surface: kWhiteColor,
        seedColor: const Color.fromRGBO(128, 43, 0, 1),
        primary: const Color.fromRGBO(128, 43, 0, 1),
      ),
      fontFamily: GoogleFonts.reggaeOne().fontFamily,
      fontFamilyFallback: GoogleFonts.reggaeOne().fontFamilyFallback,
      textTheme: TextTheme(
        bodySmall: GoogleFonts.reggaeOne(color: kBlackColor),
        bodyMedium: GoogleFonts.reggaeOne(color: kBlackColor),
        bodyLarge: GoogleFonts.reggaeOne(color: kBlackColor),
        displaySmall: GoogleFonts.reggaeOne(color: kBlackColor),
        displayMedium: GoogleFonts.reggaeOne(color: kBlackColor),
        displayLarge: GoogleFonts.reggaeOne(color: kBlackColor),
        headlineSmall: GoogleFonts.reggaeOne(color: kBlackColor),
        headlineMedium: GoogleFonts.reggaeOne(color: kBlackColor),
        headlineLarge: GoogleFonts.reggaeOne(color: kBlackColor),
        labelSmall: GoogleFonts.reggaeOne(color: kBlackColor),
        labelMedium: GoogleFonts.reggaeOne(color: kBlackColor),
        labelLarge: GoogleFonts.reggaeOne(color: kBlackColor),
        titleSmall: GoogleFonts.reggaeOne(color: kBlackColor),
        titleMedium: GoogleFonts.reggaeOne(color: kBlackColor),
        titleLarge: GoogleFonts.reggaeOne(color: kBlackColor),
      ),
    );
  }
}
