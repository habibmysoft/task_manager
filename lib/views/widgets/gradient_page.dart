import 'package:flutter/material.dart';
import 'package:task_management/theme/colors.dart';

Widget gradientPage(Widget child){
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [whiteColor, whiteDF], // Define your gradient colors
        begin: Alignment.topLeft, // Gradient starts from the top-left
        end: Alignment.bottomRight, // Gradient ends at the bottom-right
      ),
    ),
    child: child,
  );
}