import 'package:flutter/material.dart';
import 'package:task_management/theme/colors.dart';
import 'package:task_management/theme/text_theme.dart';

Widget taskButton(bool isSelected, {required String value, Function()? onTap}){
  return Expanded(
    child: InkWell(
      onTap: onTap,

      child: Container(
        height: 28,
        decoration: BoxDecoration(
          borderRadius: isSelected ? BorderRadius.circular(80) : null,
          color: isSelected ? purple61 : whiteColor,
        ),
        alignment: Alignment.center,
        child: text_14_600(value, color: isSelected ? whiteColor : grey6E),
      ),
    ),
  );
}