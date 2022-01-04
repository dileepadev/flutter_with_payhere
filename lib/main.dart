import 'package:flutter/material.dart';
import 'package:flutter_with_payhere/app_theme.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppThemeData().appName,
      theme: AppThemeData.lightThemeOnly,
      home: HomePage(title: AppThemeData().appName),
    );
  }
}
