import 'package:flutter/material.dart';
import 'package:task_management/views/widgets/date_picker_text_field.dart';

Widget dateFields(
  BuildContext context, {
    bool input = true,
  required TextEditingController firstDateController,
  required TextEditingController secondDateController,
}) {
  return Row(
    children: [
      datePickerTextFieldWithTitle(
        context,
        title: "First Date",
        controller: firstDateController,
        isDisable: true,
        viewOnly: !input
      ),
      SizedBox(width: 12),
      datePickerTextFieldWithTitle(
        context,
        title: "Second Date",
        controller: secondDateController,
        viewOnly: !input,
      ),
    ],
  );
}
