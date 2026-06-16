import 'package:flutter/material.dart';
import 'package:of_assignments/screens/about.dart';
import 'package:of_assignments/screens/home.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> screens = [
    Home(),
    About(),
  ];
  final List<String> title = [
    "Home",
    ""
  ];
  int screenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title[screenIndex]),
      ),
      body: IndexedStack(
        index: screenIndex,
        children: screens,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: screenIndex,
        onDestinationSelected: (index){
          setState(() {
            screenIndex = index;
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.info), label: "About"),
        ],
      ),
    );
  }
}
