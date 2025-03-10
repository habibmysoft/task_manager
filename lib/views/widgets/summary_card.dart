import 'package:flutter/material.dart';
import 'package:task_management/theme/text_theme.dart';

Widget summaryCard({
  required String title,
  String? value,
  Color? color,
  Color? borderColor,
  Color? valueColor,
  double borderRadius = 12,

}) {
  return Expanded(
    child: Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor ?? Colors.black, width: 1),
      ),
    
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [text_14_500(title), SizedBox(height: 8,),text_24_500(value, color: valueColor)],
      ),
    ),
  );
}
