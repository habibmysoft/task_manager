import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/views/widgets/today_task_button.dart';

import '../../theme/text_theme.dart';

Widget todayTasks(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_20_500('Today tasks'),
      SizedBox(height: 12,),
      todayTaskButton(),
    ],
  );
}