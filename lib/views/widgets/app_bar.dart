import 'package:flutter/material.dart';
import 'package:task_management/theme/text_theme.dart';

AppBar mainAppBar(String title){
  return AppBar(
    centerTitle: false,
    // backgroundColor: Colors.white,
    title: text_18_500(title),
  );
}