import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management/models/tasks.dart';
import 'package:task_management/theme/text_theme.dart';

import '../../view_models/task_view_model.dart';

Widget deleteTask(Task task, WidgetRef ref, BuildContext context){
  return InkWell(
    onTap: () {
      ref.read(taskViewModelProvider.notifier).deleteTask(task.id ?? 0);
      Navigator.pop(context);
    },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Color(0xFFFFE1E2)
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: text_12_600("Delete", color: Colors.red),
    ),
  );
}