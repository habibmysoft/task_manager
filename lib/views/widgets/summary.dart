import 'package:flutter/material.dart';
import 'package:task_management/theme/text_theme.dart';
import 'package:task_management/views/widgets/summary_card.dart';

Widget summary(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_20_500('Summary'),
      SizedBox(height: 12,),
      Row(
        children: [
          summaryCard(title: "Assigned tasks", value: '21', color: Color(0xFFEEEFFF), valueColor: Color(0xFF613BE7), borderColor: Color(0xFF613BE7)),
          SizedBox(width: 8,),
          summaryCard(title: "Completed tasks", value: '31', color: Color(0xFFDEFFE8), valueColor: Color(0xFF009F76), borderColor: Color(0xFF009F76)),
        ],
      ),
      SizedBox(height: 20,)
    ],
  );
}