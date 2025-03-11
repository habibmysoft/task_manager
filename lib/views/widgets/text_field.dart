import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_management/theme/colors.dart';

Widget textField({
  required TextEditingController controller,
  String? hintText,
  int? maxLines,
  bool readOnly = false
}) {
  return TextField(
    readOnly: readOnly,
    controller: controller,
    maxLines: maxLines,
    style: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: grey6E,
    ),
    decoration: InputDecoration(
      border: border(),
      focusedBorder: border(),
      enabledBorder: border(),
      hintText: hintText,
      hintStyle: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: grey6E,
      ),
    ),
  );
}

OutlineInputBorder border() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(color: greyDC, width: 1),
  );
}

OutlineInputBorder disableBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(color: greyDC, width: 1),
  );
}
