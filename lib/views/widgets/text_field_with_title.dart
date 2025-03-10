import 'package:flutter/material.dart';
import 'package:task_management/theme/text_theme.dart';
import 'package:task_management/views/widgets/text_field.dart';

Widget textFieldWithTitle(String title, {required TextEditingController controller, String? hintText,
  int? maxLines,}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_14_500(title, color: Color(0xFF0D101C)),
      SizedBox(height: 10,),
      textField(controller: controller, hintText: hintText, maxLines: maxLines)
    ],
  );
}