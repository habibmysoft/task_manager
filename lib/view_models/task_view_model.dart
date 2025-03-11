import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/tasks.dart';
import '../services/database_helper.dart';

final taskViewModelProvider = StateNotifierProvider<TaskViewModel, List<Task>>(
      (ref) => TaskViewModel(),
);

final completedFilterProvider = StateProvider<bool>((ref) => true);

final taskProvider = Provider<Task>((ref) {
  throw UnimplementedError('Task must be overridden before use.');
});

final selectedDateProvider = StateProvider<DateTime>((ref) => DateTime.now());

class TaskViewModel extends StateNotifier<List<Task>> {
  TaskViewModel() : super([]) {
    fetchTasks();
  }

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


  bool _showCompletedOnly = true;
  DateTime _selectedDate = DateTime.now();

  void toggleCompletedFilter(bool showCompleted) {
    _showCompletedOnly = showCompleted;
    state = [...state];
  }

  void setSelectedDate(DateTime date) {
    _selectedDate = date;
    state = [...state];
  }

  List<Task> get filteredTasks {
    return state.where((task) {
      final matchesCompletion = _showCompletedOnly ? task.isCompleted : true;

      final matchesDate = _selectedDate.isAfter(task.startDate) ||
          _selectedDate.isAtSameMomentAs(task.startDate) &&
              _selectedDate.isBefore(task.endDate) ||
          _selectedDate.isAtSameMomentAs(task.endDate);

      return matchesCompletion && matchesDate;
    }).toList();
  }

}