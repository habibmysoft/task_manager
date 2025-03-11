import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../theme/text_theme.dart';
import '../../view_models/dashboard_model.dart';

Widget createTask(BuildContext context, WidgetRef ref){
  return InkWell(
    onTap: () {
      ref.read(dashboardViewModelProvider.notifier).setSelectedIndex(1);
    },
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Color(0xFFEEEFFF)
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: text_12_600("Create New", color: Color(0xFF613BE7)),
    ),
  );
}