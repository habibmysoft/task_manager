import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management/views/widgets/app_bar.dart';
import 'package:task_management/views/widgets/delete_button.dart';
import 'package:task_management/views/widgets/gradient_scaffold.dart';
import 'package:task_management/views/widgets/task_input_output.dart';

import '../utils/date_formater.dart';
import '../view_models/task_view_model.dart';

class TaskDetailScreen extends ConsumerWidget {
  const TaskDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final task = ref.watch(taskProvider);

    return gradientScaffold(
      appBar: mainAppBar('View Task', action: deleteTask(task, ref, context)),
      body: taskInputOutput(
      context,
      ref,
      titleController: TextEditingController(text: task.title),
      descriptionController: TextEditingController(text: task.description),

      firstDateController: TextEditingController(text: formatDateMonthNameDayYear(task.startDate)),
      secondDateController: TextEditingController(text: formatDateMonthNameDayYear(task.endDate)),
      input: false,
      id: task.id ?? 0,
    ),);
  }
}
