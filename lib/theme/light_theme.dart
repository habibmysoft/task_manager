import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors.dart';
import 'input_decoration_theme.dart';

ThemeData lightTheme() {
  return ThemeData(
      primaryColor: primaryColor,
      secondaryHeaderColor: primaryColor,
      scaffoldBackgroundColor: secondaryColor,
      brightness: Brightness.light,
      // iconTheme: IconThemeData(size: 20.h, color: primaryColor),
      colorScheme: const ColorScheme.light(
        primary: Colors.black,
        secondary: Colors.black,
      ),
      inputDecorationTheme: inputDecorationTheme(),
      appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness:  Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light,),));
}

