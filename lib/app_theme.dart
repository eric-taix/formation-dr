import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final defaultFont = GoogleFonts.roboto();

final defaultTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
  fontFamily: defaultFont.fontFamily,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.deepPurple,
    titleTextStyle: TextStyle(color: Colors.white),
  ),
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    color: Colors.black87,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontSize: 19,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
  ),
);

final jeremyTheme = defaultTheme.copyWith(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue).copyWith(
      primaryContainer: Colors.red,
      inversePrimary: Color(0xFFF9FAFC),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(color: Colors.black),
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      color: Color(0xFFF1F3F8),
    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontFamily: defaultFont.fontFamily,
      ),
      bodyLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w900,
        color: Colors.black,
        fontFamily: defaultFont.fontFamily,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontFamily: defaultFont.fontFamily,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.grey,
        fontFamily: defaultFont.fontFamily,
      ),
      labelSmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: Colors.grey,
        fontFamily: defaultFont.fontFamily,
      ),
    ));

extension ColorExtension on Color {
  Color get darker {
    return Color.fromARGB(alpha, (red * 0.8).toInt(), (green * 0.8).toInt(), (blue * 0.8).toInt());
  }
}
