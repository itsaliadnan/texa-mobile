import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Colors used across both themes
  static const Color _primaryColor = Color(0xff21A761);
  static const Color _errorColor = Color(0xffE53E3E);
  static const Color _primaryDark = Color(
    0xff28D17C,
  ); // vibrant green-teal blend

  // Light theme
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: _primaryColor,
      brightness: Brightness.light,
      primary: _primaryColor,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      error: _errorColor,
      onError: Colors.white,
      surface: Color(0xffF0F0F0),
      onSurface: Color(0xff161616),
    ),
    scaffoldBackgroundColor: const Color(0xffF5F5F5),
    appBarTheme: const AppBarTheme(
      backgroundColor: _primaryColor,
      foregroundColor: Colors.white,
    ),
    textTheme: GoogleFonts.cairoTextTheme(),
    useMaterial3: true,
  );

  // Dark theme
  static final ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: _primaryDark,
      brightness: Brightness.dark,
      primary: _primaryDark,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      error: _errorColor,
      onError: Colors.white,
      surface: Color(0xff1E1E1E),
      onSurface: Colors.white,
    ),
    scaffoldBackgroundColor: const Color(0xff121212),
    appBarTheme: const AppBarTheme(
      backgroundColor: _primaryColor,
      foregroundColor: Colors.white,
    ),
    textTheme: GoogleFonts.cairoTextTheme(ThemeData.dark().textTheme),
    useMaterial3: true,
  );
}
