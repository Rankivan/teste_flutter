import 'package:flutter/material.dart';

import 'app_controller.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, child) {
      return MaterialApp(
        theme:
        ThemeData(
            primarySwatch: Colors.amber,
            brightness: AppController.instance.isDartTheme ? Brightness.dark : Brightness.light
        ),
        home: HomePage(),
      );
    }, animation: AppController.instance,);
  }
}
