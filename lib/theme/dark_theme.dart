import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors.dart';
import 'input_decoration_theme.dart';

ThemeData darkTheme() {
  return ThemeData(
    primaryColor: primaryColor,
    secondaryHeaderColor: primaryColor,
    scaffoldBackgroundColor: backgroundDark,  // Dark background
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: Colors.white,
      secondary: Colors.white,
    ),
    inputDecorationTheme: inputDecorationTheme(),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light, // Light icons for dark mode
        statusBarBrightness: Brightness.dark,  // Use dark status bar icons on Android
      ),
    ),
  );
}
