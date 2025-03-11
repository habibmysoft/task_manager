import 'package:flutter/material.dart';
import 'package:task_management/utils/date_formater.dart';

Future<void> selectDate(
  BuildContext context, {
  required TextEditingController controller,
  // required DateTime date,
}) async {
  DateTime? picked = await showDatePicker(
    context: context,
    initialDate: parseDateMonthNameDayYear(controller.text),
    firstDate: DateTime.now(),
    lastDate: DateTime(2100),
  );

  if (picked != null) {
    controller.text = formatDateMonthNameDayYear(picked);
    // date = picked;
  }
}
