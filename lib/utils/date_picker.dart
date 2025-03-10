import 'package:flutter/material.dart';

Future<void> selectDate(BuildContext context, {required TextEditingController controller}) async {
  DateTime? picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime.now(),
    lastDate: DateTime(2100),
  );

  if (picked != null) {
    controller.text = picked.toIso8601String();
    // setState(() {
    //   widget.controller.text = "${picked.day} ${_getMonthName(picked.month)}, ${picked.year}";
    // });
  }
}