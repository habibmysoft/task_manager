
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management/theme/text_theme.dart';
import 'package:task_management/views/widgets/app_bar.dart';
import 'package:task_management/views/widgets/create_task.dart';
import 'package:task_management/views/widgets/gradient_scaffold.dart';
import 'package:task_management/views/widgets/task_view_card.dart';
import 'package:task_management/views/widgets/week_slider.dart';
import '../view_models/task_view_model.dart';

class AllTasksScreen extends ConsumerWidget {
  const AllTasksScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasks = ref.watch(taskViewModelProvider);
    final selectedDate = ref.watch(selectedDateProvider);

    List<DateTime> dates = List.generate(
      7,
          (index) => DateTime.now().subtract(Duration(days: 3 - index)),
    );

    final filteredTasks = tasks.where((task) {
      return selectedDate.isAfter(task.startDate) &&
          selectedDate.isBefore(task.endDate.add(Duration(days: 1)));
    }).toList();

    return gradientScaffold(
      appBar: mainAppBar('All Task', action: createTask(context, ref)),
      body: Column(
      children: [
        SizedBox(height: 20),
        weekSlider(dates, ref, selectedDate),
        SizedBox(height: 20),
        Expanded(
          child: filteredTasks.isEmpty
              ? Center(child: text_16_600('No tasks for this date'))
              : ListView.builder(
            padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 84),
            itemCount: filteredTasks.length,
            itemBuilder: (context, index) {
              final task = filteredTasks[index];
              return taskViewCard(context, task);
            },
          ),
        ),
      ],
    ),);

  }
}
