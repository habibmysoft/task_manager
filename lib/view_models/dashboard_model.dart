import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../views/all_task_screen.dart';
import '../views/create_task_screen.dart';
import '../views/home_screen.dart';

class DashboardViewModel extends StateNotifier<int> {
  DashboardViewModel() : super(0);

  final List<Widget> _screens = [
    HomeScreen(),
    CreateTaskScreen(),
    AllTasksScreen(),
  ];

  List<Widget> get screens => _screens;

  void setSelectedIndex(int index) {
    state = index;
  }

  Widget get selectedScreen => _screens[state];
}

final dashboardViewModelProvider = StateNotifierProvider<DashboardViewModel, int>((ref) {
  return DashboardViewModel();
});
