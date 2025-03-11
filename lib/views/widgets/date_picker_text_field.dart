import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_management/theme/colors.dart';
import 'package:task_management/views/widgets/text_field.dart';

import '../../theme/text_theme.dart';
import '../../utils/date_picker.dart';

Widget datePickerTextFieldWithTitle(
  BuildContext context, {
    required String title,
  required TextEditingController controller,
      bool isDisable = false,
      bool viewOnly = false,
}) {
  return Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text_14_500(title, color: black0D),
        SizedBox(height: 10,),
        TextField(
          controller: controller,
          readOnly: true,
          enabled: !isDisable,
          onTap: () => viewOnly ? null : selectDate(context, controller: controller,),
          style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: grey6E),
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.date_range, color: purple61, size: 16,),
            border: border(),
            focusedBorder: border(),
            enabledBorder: border(),
            disabledBorder: disableBorder(),
            contentPadding: EdgeInsets.only(left: 12, right: 8)
          ),
        ),
      ],
    ),
  );
}
