import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:task_management/views/widgets/gradient_page.dart';
import 'package:task_management/views/widgets/home_app_bar.dart';
import 'package:task_management/views/widgets/summary.dart';
import 'package:task_management/views/widgets/today_task_view.dart';
import 'package:task_management/views/widgets/today_tasks.dart';
import '../models/tasks.dart';
import '../view_models/task_view_model.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasks = ref.watch(taskViewModelProvider);

    return SafeArea(
      bottom: false,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: gradientPage(ListView(
          padding: EdgeInsets.all(20),
          children: [
            homeAppBar(),
            SizedBox(height: 20,),
            summary(),
            todayTasks(),
            SizedBox(height: 12,),
            todayTaskView(),
            // ListView.builder(
            //   shrinkWrap: true,
            //   physics: NeverScrollableScrollPhysics(),
            //   itemCount: tasks.length,
            //   itemBuilder: (context, index) {
            //     final task = tasks[index];
            //     return ListTile(
            //       title: Text(task.title),
            //       subtitle: Text(task.description),
            //       trailing: Checkbox(
            //         value: task.isCompleted,
            //         onChanged: (value) {
            //           ref.read(taskViewModelProvider.notifier).updateTask(
            //             task.copyWith(isCompleted: value),
            //           );
            //         },
            //       ),
            //       onLongPress: () {
            //         ref.read(taskViewModelProvider.notifier).deleteTask(task.id!);
            //       },
            //     );
            //   },
            // ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {
            _showAddTaskDialog(context, ref);
          },
          child: Icon(Icons.add, color: Colors.black,),
        ),
      ),
    );
  }

  void _showAddTaskDialog(BuildContext context, WidgetRef ref) {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Task'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Title'),
              ),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(labelText: 'Description'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                final task = Task(
                  title: titleController.text,
                  description: descriptionController.text, startDate: DateTime.now(), endDate: DateTime.now(),
                );
                ref.read(taskViewModelProvider.notifier).addTask(task);

                Navigator.pop(context);
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}