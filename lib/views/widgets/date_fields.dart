import 'package:flutter/material.dart';
import 'package:task_management/views/widgets/date_picker_text_field.dart';

Widget dateFields(BuildContext context, ){
  return Row(
    children: [
      datePickerTextFieldWithTitle(context, title: "First Date", controller: TextEditingController(), isDisable: true),
      SizedBox(width: 12,),
      datePickerTextFieldWithTitle(context, title: "Second Date", controller: TextEditingController()),
    ],
  );
}