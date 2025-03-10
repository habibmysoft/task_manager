import 'package:flutter/material.dart';
import 'package:task_management/theme/text_theme.dart';
import 'package:task_management/views/widgets/date_fields.dart';
import 'package:task_management/views/widgets/text_field_with_title.dart';

Widget taskInputOutput(BuildContext context, {bool input = true}){
  return Container(
    // alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
    ),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
    margin: EdgeInsets.symmetric(vertical: 16),
    child: SingleChildScrollView(
      child: Column(
        children: [
          textFieldWithTitle("Task Name", controller: TextEditingController(), hintText: 'Enter Your Task Name'),
          SizedBox(height: 12,),
          textFieldWithTitle("Task description", controller: TextEditingController(), hintText: 'Enter Your Task Description', maxLines: 5),
          SizedBox(height: 8,),
          textCount(33),
          SizedBox(height: 12,),
          dateFields(context),
          SizedBox(height: 12,),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF613BE7),
              borderRadius: BorderRadius.circular(80)
            ),
            padding: EdgeInsets.all(16),
            alignment: Alignment.center,
            child: text_14_600(input ? 'Create new tasks' : 'Complete', color: Colors.white),
          )
        ],
      ),
    ),
  );
}