import 'package:flutter/material.dart';
import 'package:task_management/models/tasks.dart';
import 'package:task_management/theme/colors.dart';
import 'package:task_management/theme/text_theme.dart';
import 'package:task_management/utils/assets.dart';
import 'package:task_management/utils/navigate_to_task_detail.dart';
import 'package:task_management/views/widgets/task_status_button.dart';

import '../../utils/date_formater.dart';

Widget taskViewCard(BuildContext context, Task task){
  return InkWell(
    onTap: () {
      navigateToTaskDetail(context, task: task);
    },
    child: Container(
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: greyDC, width: 1)
      ),
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text_16_500(task.title, color: black0D),
          SizedBox(height: 5,),
          text_12_400(task.description, maxLines: 2, color: grey6E, ),
        SizedBox(height: 12,),
          Row(
            children: [
              // Icon(Icons.watch_later_outlined, size: 12,),
              Image.asset(Assets.clock, height: 12, width: 12,),
              SizedBox(width: 6,),
              Expanded(child: text_10_400(task.isCompleted ? formatDateMonthNameDayYear(task.endDate) : formatDateMonthNameDayYear(task.startDate), color: grey6E)),
              taskStatusButton(task.isCompleted)
            ],
          )
        ],
      ),
    ),
  );
}