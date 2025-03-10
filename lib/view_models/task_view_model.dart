import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/tasks.dart';
import '../services/database_helper.dart';

final taskViewModelProvider = StateNotifierProvider<TaskViewModel, List<Task>>(
      (ref) => TaskViewModel(),
);

class TaskViewModel extends StateNotifier<List<Task>> {
  TaskViewModel() : super([]);

  final DatabaseHelper _dbHelper = DatabaseHelper();

  Future<void> fetchTasks() async {
    final tasks = await _dbHelper.getTasks();
    state = tasks;
  }

  Future<void> addTask(Task task) async {
    await _dbHelper.insertTask(task);
    fetchTasks();
  }

  Future<void> updateTask(Task task) async {
    await _dbHelper.updateTask(task);
    fetchTasks();
  }

  Future<void> deleteTask(int id) async {
    await _dbHelper.deleteTask(id);
    fetchTasks();
  }
}