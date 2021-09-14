import 'package:flutter/material.dart';
import 'package:todoey_2/list_of_task.dart';
import 'task_tile.dart';
import 'task_screen.dart';
import 'package:provider/provider.dart';
import 'list_of_task.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>Taskdata(),
      child: MaterialApp(
        home:TaskScreen(),
      ),
    );
  }
}

// class Tasktile extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title:  Text('Buy milk'),
//       trailing: Checkbox(value: false,
//           onChanged: null),
//
//     );
//   }
// }