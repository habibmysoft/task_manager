import 'package:flutter/material.dart';

Widget gradientPage(Widget child){
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Color(0xFFFFFFFF), Color(0xFFDFE4F1)], // Define your gradient colors
        begin: Alignment.topLeft, // Gradient starts from the top-left
        end: Alignment.bottomRight, // Gradient ends at the bottom-right
      ),
    ),
    child: child,
  );
}