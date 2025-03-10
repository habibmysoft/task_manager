import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_management/views/widgets/text_field.dart';

import '../../theme/text_theme.dart';
import '../../utils/date_picker.dart';

Widget datePickerTextFieldWithTitle(
  BuildContext context, {
    required String title,
  required TextEditingController controller,
      bool isDisable = false,
}) {
  return Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text_14_500(title, color: Color(0xFF0D101C)),
        SizedBox(height: 10,),
        TextField(
          controller: controller,
          readOnly: true,
          enabled: !isDisable,
          onTap: () => selectDate(context, controller: controller),
          style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF6E7591)),
          decoration: InputDecoration(
            // hintText: hintText,
            suffixIcon: Icon(Icons.date_range, color: Color(0xFF613BE7), size: 16,),
            border: border(),
            focusedBorder: border(),
            enabledBorder: border(),
          ),
        ),
      ],
    ),
  );
}
