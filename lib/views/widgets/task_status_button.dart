import 'package:flutter/material.dart';
import 'package:task_management/theme/text_theme.dart';

Widget taskStatusButton(bool isComplete,){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      color: isComplete ? Color(0xFFEEFFE0) : Color(0xFFF0EDFD),
    ),
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    child: text_10_400(isComplete ? "Complete" : "Todo", color: isComplete ? Color(0xFF009F76) : Color(0xFF613BE7)),
  );
}