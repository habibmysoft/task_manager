import 'package:flutter/material.dart';
import 'package:task_management/theme/text_theme.dart';
import 'package:task_management/views/widgets/task_status_button.dart';

Widget taskViewCard(){
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Color(0xFFDCE1EF), width: 1)
    ),
    padding: EdgeInsets.all(12),
    child: Column(
      children: [
        text_16_500("E-commerce Checkout Process Redesign", color: Color(0xFF0D101C)),
        SizedBox(height: 5,),
        text_12_400('Redesign the homepage of our website to improve user engagement and align with our updated branding guidelines. Focus on creating an intuitive user interface with enhanced visual appeal.', maxLines: 2, color: Color(0xFF6E7591), ),
      SizedBox(height: 12,),
        Row(
          children: [
            Icon(Icons.watch_later_outlined, size: 12,),
            SizedBox(width: 6,),
            Expanded(child: text_10_400('October 15, 2023', color: Color(0xFF6E7591))),
            taskStatusButton(true)
          ],
        )
      ],
    ),
  );
}