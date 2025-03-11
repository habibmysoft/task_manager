import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/tasks.dart';
import '../view_models/task_view_model.dart';
import '../views/task_detail_screen.dart';

void navigateToTaskDetail(BuildContext context, {required Task task}){
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ProviderScope(
        overrides: [
          taskProvider.overrideWithValue(task),
        ],
        child: const TaskDetailScreen(),
      ),
    ),
  );
}