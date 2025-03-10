import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management/views/widgets/app_bar.dart';
import 'package:task_management/views/widgets/gradient_page.dart';
import '../view_models/task_view_model.dart';

class AllTasksScreen extends ConsumerWidget {
  const AllTasksScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasks = ref.watch(taskViewModelProvider);

    return Scaffold(
      appBar: mainAppBar('All Task'),
      body: gradientPage(ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return ListTile(
            title: Text(task.title),
            subtitle: Text(task.description),
            trailing: Checkbox(
              value: task.isCompleted,
              onChanged: (value) {
                ref.read(taskViewModelProvider.notifier).updateTask(
                  task.copyWith(isCompleted: value),
                );
              },
            ),
          );
        },
      )),
    );
  }
}