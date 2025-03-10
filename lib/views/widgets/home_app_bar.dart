import 'package:flutter/material.dart';

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
            text_12_400('Good morning Liam!', color: Color(0xFF6E7591)),
            text_16_500(formatDate(DateTime.now()))
          ],
        ),
      ),
      Icon(Icons.notifications, color: Color(0xFF0D101C), size: 24,)
    ],
  );
}