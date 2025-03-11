import 'package:flutter/material.dart';
import 'package:task_management/theme/colors.dart';
import 'package:task_management/theme/text_theme.dart';

Widget taskStatusButton(bool isComplete,){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      color: isComplete ? whiteEE : whiteF0,
    ),
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    child: text_10_400(isComplete ? "Complete" : "Todo", color: isComplete ? green00 : purple61),
  );
}