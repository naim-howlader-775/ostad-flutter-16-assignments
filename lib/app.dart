import 'package:flutter/material.dart';
import 'package:of_assignments/screens/contact_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ostad Flutter 16 Live Test 2",
      debugShowCheckedModeBanner: false,
      home: ContactScreen(),
    );
  }
}
