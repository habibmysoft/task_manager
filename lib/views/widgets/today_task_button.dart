import 'package:flutter/material.dart';
import 'package:task_management/theme/text_theme.dart';
import 'package:task_management/views/widgets/task_button.dart';

Widget todayTaskButton(){
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Color(0xFFDCE1EF), width: 1),
      borderRadius: BorderRadius.circular(42)
    ),
    padding: EdgeInsets.all(6),
    child: Row(
      children: [
        taskButton(true, value: 'All tasks'),
        taskButton(false, value: 'Completed'),
      ],
    ),
  );
}