import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management/views/widgets/task_view_card.dart';

import '../../view_models/task_view_model.dart';

Widget todayTaskView(BuildContext context, WidgetRef ref,){
  final taskViewModel = ref.watch(taskViewModelProvider);
  final isCompletedFilter = ref.watch(completedFilterProvider);

  final filteredTasks = taskViewModel.where((task) {
    final matchesCompletion = !isCompletedFilter ? task.isCompleted : true;
    return matchesCompletion ;
  }).toList();

  return Column(
    children: filteredTasks.map((task) => taskViewCard(context, task)).toList(),
  );
}