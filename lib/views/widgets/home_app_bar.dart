import 'package:flutter/material.dart';
import 'package:task_management/theme/colors.dart';
import 'package:task_management/utils/assets.dart';

import '../../theme/text_theme.dart';
import '../../utils/date_formater.dart';

Widget homeAppBar(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text_12_400('Good morning Liam!', color: grey6E),
            text_16_500(formatDate(DateTime.now()))
          ],
        ),
      ),
      // Icon(Icons.notifications, color: black0D, size: 24,)
      Image.asset(Assets.notification, height: 24, width: 24,)
    ],
  );
}