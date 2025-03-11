import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management/theme/colors.dart';
import 'package:task_management/views/widgets/task_button.dart';

import '../../view_models/task_view_model.dart';

Widget todayTaskButton(bool isAllTaskSelected, WidgetRef ref, ){
  final taskViewModel = ref.watch(taskViewModelProvider.notifier);
  return Container(
    decoration: BoxDecoration(
      color: whiteColor,
      border: Border.all(color: greyDC, width: 1),
      borderRadius: BorderRadius.circular(42)
    ),
    padding: EdgeInsets.all(6),
    child: Row(
      children: [
        taskButton(isAllTaskSelected, value: 'All tasks', onTap: () {
          ref.read(completedFilterProvider.notifier).state = true;
          taskViewModel.toggleCompletedFilter(true);
        },),
        taskButton(!isAllTaskSelected, value: 'Completed', onTap: () {
          ref.read(completedFilterProvider.notifier).state = false;
          taskViewModel.toggleCompletedFilter(false);
        },),
      ],
    ),
  );
}