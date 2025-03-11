import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management/views/widgets/today_task_button.dart';

import '../../theme/text_theme.dart';

Widget todayTasks(bool isAllTaskSelected, WidgetRef ref,){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_20_500('Today tasks'),
      SizedBox(height: 12,),
      todayTaskButton(isAllTaskSelected, ref),
    ],
  );
}