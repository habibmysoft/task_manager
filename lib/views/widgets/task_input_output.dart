import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management/theme/colors.dart';
import 'package:task_management/theme/text_theme.dart';
import 'package:task_management/utils/date_formater.dart';
import 'package:task_management/views/widgets/date_fields.dart';
import 'package:task_management/views/widgets/text_field_with_title.dart';

import '../../models/tasks.dart';
import '../../view_models/task_view_model.dart';

Widget taskInputOutput(
  BuildContext context,
  WidgetRef ref, {
  bool input = true,
  required TextEditingController titleController,
  required TextEditingController descriptionController,
  int id = 0,

  required TextEditingController firstDateController,
  required TextEditingController secondDateController,
}) {
  return Container(
    decoration: BoxDecoration(
      color: whiteColor,
      borderRadius: BorderRadius.circular(16),
    ),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
    margin: EdgeInsets.symmetric(vertical: 16),
    child: SingleChildScrollView(
      child: Column(
        children: [
          textFieldWithTitle(
            "Task Name",
            controller: titleController,
            hintText: 'Enter Your Task Name',
            readOnly: !input
          ),
          SizedBox(height: 12),
          textFieldWithTitle(
            "Task description",
            controller: descriptionController,
            hintText: 'Enter Your Task Description',
            maxLines: 5,
              readOnly: !input
          ),
          SizedBox(height: 8),
          ValueListenableBuilder<TextEditingValue>(
            valueListenable: descriptionController,
            builder: (context, value, child) {
              return textCount(value.text.length);
            },
          ),
          SizedBox(height: 12),
          dateFields(
            context,
            firstDateController: firstDateController,
            // selectedStartDate: selectedStartDate,
            secondDateController: secondDateController,
            // selectedEndDate: selectedEndDate,
            input: input,
          ),
          SizedBox(height: 12),
          InkWell(
            onTap: () {
              if (input) {
                if (titleController.text.isNotEmpty &&
                    descriptionController.text.isNotEmpty) {

                  final task = Task(
                    title: titleController.text,
                    description: descriptionController.text,
                    startDate: parseDateMonthNameDayYear(firstDateController.text),
                    endDate: parseDateMonthNameDayYear(secondDateController.text),
                    isCompleted: false,
                  );

                  ref.read(taskViewModelProvider.notifier).addTask(task);

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Successfully Created!'),
                      backgroundColor: Colors.green,
                    ),
                  );

                  titleController.clear();
                  descriptionController.clear();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Please fill all fields!')),
                  );
                }
              } else {
                final task = Task(
                  id: id,
                  title: titleController.text,
                  description: descriptionController.text,
                  startDate: parseDateMonthNameDayYear(firstDateController.text),
                  endDate: parseDateMonthNameDayYear(secondDateController.text),
                  isCompleted: true,
                );

                ref.read(taskViewModelProvider.notifier).updateTask(task);

                Navigator.pop(context);
              }
            },

            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: purple61,
                borderRadius: BorderRadius.circular(80),
              ),
              padding: EdgeInsets.all(16),
              alignment: Alignment.center,
              child: text_14_600(
                input ? 'Create new tasks' : 'Complete',
                color: whiteColor,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
