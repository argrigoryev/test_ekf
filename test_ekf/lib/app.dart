import 'package:flutter/material.dart';
import 'package:test_ekf/appTheme.dart';
import 'package:test_ekf/screens/employeesScreen.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getTheme(),
      home: EmployeesScreen(),
    );
  }
}