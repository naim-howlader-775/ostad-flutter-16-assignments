import 'package:flutter/material.dart';
import 'package:of_assignments/repository_guide_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ostad Flutter 16 Assignments",
      debugShowCheckedModeBanner: false,
      initialRoute: 'base',
      home: RepositoryGuideScreen(),
    );
  }
}
