import 'package:flutter/material.dart';
import 'package:of_assignments/module_13/about.dart';
import 'package:of_assignments/module_13/home.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = [
    Home(),
    About(),
  ];
  int screenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[screenIndex],
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
