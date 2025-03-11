import 'package:flutter/material.dart';
import 'package:task_management/views/widgets/gradient_page.dart';

Widget gradientScaffold({AppBar? appBar, required Widget body, Widget? bottomNavigationBar, bool extendBody = false}){
  return gradientPage(Scaffold(
    appBar: appBar,
    extendBody: extendBody,
    body: body,
    bottomNavigationBar: bottomNavigationBar,
  ));
}