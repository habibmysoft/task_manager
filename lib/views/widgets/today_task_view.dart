import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management/views/widgets/task_view_card.dart';

import '../../view_models/task_view_model.dart';

Widget todayTaskView(BuildContext context, WidgetRef ref,){
  final taskViewModel = ref.watch(taskViewModelProvider);
  final isCompletedFilter = ref.watch(completedFilterProvider);
  final selectedDate = ref.watch(selectedDateProvider);

  final filteredTasks = taskViewModel.where((task) {
    final matchesCompletion = !isCompletedFilter ? task.isCompleted : true;
    final matchesDate = selectedDate.isAfter(task.startDate) ||
        selectedDate.isAtSameMomentAs(task.startDate) &&
            selectedDate.isBefore(task.endDate) ||
        selectedDate.isAtSameMomentAs(task.endDate);

    return matchesCompletion && matchesDate;
  }).toList();

  return Column(
    children: filteredTasks.map((task) => taskViewCard(context, task)).toList(),
  );
}