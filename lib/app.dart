import 'package:flutter/material.dart';
import 'package:of_assignments/module_12/register.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Ostad Flutter 16 Assignments",
      debugShowCheckedModeBanner: false,
      home: Register(),
    );
  }
}
