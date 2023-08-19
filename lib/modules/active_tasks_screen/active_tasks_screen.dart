import 'package:flutter/material.dart';
import 'package:flutter_todo_app/database/tasks_database.dart';

class ActiveTasksScreen extends StatefulWidget {
  const ActiveTasksScreen({super.key});

  @override
  State<ActiveTasksScreen> createState() => _ActiveTasksScreenState();
}

class _ActiveTasksScreenState extends State<ActiveTasksScreen> {
  String name = "no name";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

     floatingActionButton:  FloatingActionButton(onPressed: () {
       setState(() {
         name = "ahmed";
         final myDb = TasksDataBase();

       });

     }, child: Icon(Icons.add)),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [Text("$name")],),
      ) ,
    );
  }
}
