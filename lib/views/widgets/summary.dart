import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management/theme/colors.dart';
import 'package:task_management/theme/text_theme.dart';
import 'package:task_management/views/widgets/summary_card.dart';
import '../../view_models/task_view_model.dart';

Widget summary() {
  return Consumer(
    builder: (context, ref, child) {
      final tasks = ref.watch(taskViewModelProvider);

      final assignedTasks = tasks.length;

      final completedTasks = tasks.where((task) => task.isCompleted).length;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text_20_500('Summary'),
          SizedBox(height: 12,),
          Row(
            children: [
              summaryCard(
                  title: "Assigned tasks",
                  value: assignedTasks.toString(),
                  color: purpleEE,
                  valueColor: purple61,
                  borderColor: purple61
              ),
              SizedBox(width: 8,),
              summaryCard(
                  title: "Completed tasks",
                  value: completedTasks.toString(),
                  color: greenDe,
                  valueColor: green00,
                  borderColor: green00
              ),
            ],
          ),
          SizedBox(height: 20,)
        ],
      );
    },
  );
}
