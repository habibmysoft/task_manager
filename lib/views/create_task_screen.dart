import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management/views/widgets/gradient_page.dart';
import '../models/tasks.dart';
import '../view_models/task_view_model.dart';

class CreateTaskScreen extends ConsumerWidget {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Task'),
      ),
      body: gradientPage(Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final task = Task(
                  title: _titleController.text,
                  description: _descriptionController.text,
                );
                ref.read(taskViewModelProvider.notifier).addTask(task);
                Navigator.pop(context);
              },
              child: Text('Add Task'),
            ),
          ],
        ),
      )),
    );
  }
}