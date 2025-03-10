import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management/views/widgets/app_bar.dart';
import 'package:task_management/views/widgets/gradient_page.dart';
import 'package:task_management/views/widgets/task_input_output.dart';
import '../models/tasks.dart';
import '../view_models/task_view_model.dart';

class CreateTaskScreen extends ConsumerWidget {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

   DateTime? selectedStartDate = DateTime.now();
   DateTime? selectedEndDate = DateTime.now();

  CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {


    return Scaffold(
      appBar: mainAppBar('Create new task'),
      body: gradientPage(taskInputOutput(context, )),
    );
  }
}

//Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _titleController,
//               decoration: const InputDecoration(labelText: 'Title'),
//             ),
//             TextField(
//               controller: _descriptionController,
//               decoration: const InputDecoration(labelText: 'Description'),
//             ),
//             const SizedBox(height: 20),
//
//             // Start Date Picker
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   selectedStartDate == null
//                       ? 'Select Start Date'
//                       : 'Start: ${selectedStartDate!.toLocal()}'.split(' ')[0],
//                 ),
//                 ElevatedButton(
//                   onPressed: () async {
//                     DateTime? pickedDate = await showDatePicker(
//                       context: context,
//                       initialDate: DateTime.now(),
//                       firstDate: DateTime(2000),
//                       lastDate: DateTime(2100),
//                     );
//                     if (pickedDate != null) {
//                       selectedStartDate = pickedDate;
//                     }
//                   },
//                   child: const Text('Pick'),
//                 ),
//               ],
//             ),
//
//             const SizedBox(height: 10),
//
//             // End Date Picker
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   selectedEndDate == null
//                       ? 'Select End Date'
//                       : 'End: ${selectedEndDate!.toLocal()}'.split(' ')[0],
//                 ),
//                 ElevatedButton(
//                   onPressed: () async {
//                     DateTime? pickedDate = await showDatePicker(
//                       context: context,
//                       initialDate: DateTime.now(),
//                       firstDate: DateTime(2000),
//                       lastDate: DateTime(2100),
//                     );
//                     if (pickedDate != null) {
//                       selectedEndDate = pickedDate;
//                     }
//                   },
//                   child: const Text('Pick'),
//                 ),
//               ],
//             ),
//
//             const SizedBox(height: 20),
//
//             ElevatedButton(
//               onPressed: () {
//                 if (_titleController.text.isEmpty ||
//                     _descriptionController.text.isEmpty ||
//                     selectedStartDate == null ||
//                     selectedEndDate == null) {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text('Please fill all fields!')),
//                   );
//                   return;
//                 }
//
//                 final task = Task(
//                   title: _titleController.text,
//                   description: _descriptionController.text,
//                   startDate: selectedStartDate!,
//                   endDate: selectedEndDate!,
//                 );
//
//                 ref.read(taskViewModelProvider.notifier).addTask(task);
//                 // Navigator.pop(context);
//               },
//               child: const Text('Add Task'),
//             ),
//           ],
//         ),
//       )