import 'package:flutter/material.dart';
import 'package:of_assignments/module_13/main_screen.dart';
import 'package:of_assignments/module_13/details.dart';
import 'package:of_assignments/module_13/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ostad Flutter 16 Assignments",
      debugShowCheckedModeBanner: false,
      initialRoute: 'base',
      home: MainScreen(),
    );
  }
}
