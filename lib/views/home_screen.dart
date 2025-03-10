import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management/views/widgets/gradient_page.dart';
import '../models/tasks.dart';
import '../view_models/task_view_model.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasks = ref.watch(taskViewModelProvider);

    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text('Task Manager'),
      ),
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
            onLongPress: () {
              ref.read(taskViewModelProvider.notifier).deleteTask(task.id!);
            },
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddTaskDialog(context, ref);
        },
        child: Icon(Icons.add),
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
                  description: descriptionController.text,
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