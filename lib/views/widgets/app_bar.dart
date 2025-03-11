import 'package:flutter/material.dart';
import 'package:task_management/theme/text_theme.dart';

AppBar mainAppBar(String title, {Widget? action}){
  return AppBar(
    centerTitle: false,
    // backgroundColor: whiteColor,
    title: text_18_500(title),
    actions: [action ?? SizedBox.shrink(), SizedBox(width: action != null ? 20 : 0,)],
  );
}