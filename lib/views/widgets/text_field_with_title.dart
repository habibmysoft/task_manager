import 'package:flutter/material.dart';
import 'package:task_management/theme/colors.dart';
import 'package:task_management/theme/text_theme.dart';
import 'package:task_management/views/widgets/text_field.dart';

Widget textFieldWithTitle(
  String title, {
  required TextEditingController controller,
  String? hintText,
  int? maxLines,
      bool readOnly = false
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_14_500(title, color: black0D),
      SizedBox(height: 10),
      textField(controller: controller, hintText: hintText, maxLines: maxLines, readOnly: readOnly),
    ],
  );
}
