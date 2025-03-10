import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget textField({
  required TextEditingController controller,
  String? hintText,
  int? maxLines,
}) {
  return TextField(
    controller: controller,
    maxLines: maxLines,
    style: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color(0xFF6E7591),
    ),
    decoration: InputDecoration(
      border: border(),
      focusedBorder: border(),
      enabledBorder: border(),
      hintText: hintText,
      hintStyle: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Color(0xFF6E7591),
      ),
    ),
  );
}

OutlineInputBorder border() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(color: Color(0xFFDCE1EF), width: 1),
  );
}
