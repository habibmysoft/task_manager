import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:task_management/views/widgets/gradient_scaffold.dart';
import 'package:task_management/views/widgets/home_app_bar.dart';
import 'package:task_management/views/widgets/summary.dart';
import 'package:task_management/views/widgets/today_task_view.dart';
import 'package:task_management/views/widgets/today_tasks.dart';
import '../view_models/task_view_model.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isCompletedFilter = ref.watch(completedFilterProvider);

    return SafeArea(
      bottom: false,
      child: gradientScaffold(body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          homeAppBar(),
          SizedBox(height: 20,),
          summary(),
          todayTasks(isCompletedFilter, ref),
          SizedBox(height: 12,),
          todayTaskView(context, ref),
          SizedBox(height: 64,),
        ],
      ))
    );
  }
}
