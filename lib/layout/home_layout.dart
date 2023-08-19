import 'package:flutter/material.dart';
import 'package:flutter_todo_app/modules/active_tasks_screen/active_tasks_screen.dart';
import 'package:flutter_todo_app/modules/archived_tasks_screen/archive_tasks_screen.dart';

import '../modules/done_tasks_screen/done_tasks_screen.dart';

class HomeLayoutScreen extends StatefulWidget {
  const HomeLayoutScreen({super.key});

  @override
  State<HomeLayoutScreen> createState() => _HomeLayoutScreenState();
}

class _HomeLayoutScreenState extends State<HomeLayoutScreen> {
  var currentScreen = 0;
  var todoScreen = [
    ActiveTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo APP"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentScreen,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.check_circle), label: "Done Tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.archive), label: "Archive Tasks"),
          ],
          onTap: (index) {
            setState(() {
              currentScreen = index;
            });
          }),
      body: todoScreen[currentScreen],
      //floatingActionButton:
         // FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
    );
  }
}
