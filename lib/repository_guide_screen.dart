import 'package:flutter/material.dart';

class RepositoryGuideScreen extends StatelessWidget {
  const RepositoryGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.flutter_dash,
                    size: 72,
                    color: Colors.blue,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Flutter Assignments Repository",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "You are currently viewing the main branch of this repository.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Divider(),
                  SizedBox(height: 20),
                  Text(
                    "📌 To view a specific assignment:\n\n"
                        "• Switch to the corresponding Git branch.\n"
                        "• Each assignment is maintained in its own branch.\n"
                        "• After changing branches, run the project normally.",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15, height: 1.5),
                  ),
                  SizedBox(height: 24),
                  Text(
                    "Happy Coding! 🚀",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}