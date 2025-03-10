import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.only(
      left: 5,
      right: 5,
      bottom: 10, // HERE THE IMPORTANT PART
      top: 10, // HERE THE IMPORTANT PART
    ),

    hintStyle: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: textColorPrimary,
    ),
    labelStyle: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: textColorPrimary,
    ),

    fillColor: secondaryColor,

    filled: true,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(width: 1, color: primaryColor),
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(width: 1, color: primaryColor),
    ),
    border: const UnderlineInputBorder(
      borderSide: BorderSide(width: 1, color: primaryColor),
    ),
  );
}
