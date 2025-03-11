import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management/views/widgets/app_bar.dart';
import 'package:task_management/views/widgets/gradient_scaffold.dart';
import 'package:task_management/views/widgets/task_input_output.dart';

import '../utils/date_formater.dart';


class CreateTaskScreen extends ConsumerWidget {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  final TextEditingController firstDateController = TextEditingController(text: formatDateMonthNameDayYear(DateTime.now()));
  final TextEditingController secondDateController = TextEditingController(text: formatDateMonthNameDayYear(DateTime.now()));

  CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return gradientScaffold(
      extendBody: true,
      appBar:  mainAppBar('Create new task'),
      body: taskInputOutput(
        context,
        ref,
        titleController: titleController,
        descriptionController: descriptionController,
        firstDateController: firstDateController,
        secondDateController: secondDateController,
      ));

  }
}
