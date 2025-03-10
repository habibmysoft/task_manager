import 'package:flutter/material.dart';
import 'package:task_management/theme/text_theme.dart';

Widget taskButton(bool isSelected, {required String value}){
  return Expanded(
    child: Container(
      height: 28,
      decoration: BoxDecoration(
        borderRadius: isSelected ? BorderRadius.circular(80) : null,
        color: isSelected ? Color(0xFF613BE7) : Colors.white,
      ),
      alignment: Alignment.center,
      child: text_14_600(value, color: isSelected ? Colors.white : Color(0xFF6E7591)),
    ),
  );
}