import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey_2/Task.dart';
import 'task_tile.dart';
import 'Task.dart';
import 'list_of_task.dart';
import 'package:provider/provider.dart';



class TaskList extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

      return ListView.builder(  itemCount: Provider.of<Taskdata>(context).listoftodo.length,
          itemBuilder: (BuildContext context, int index) {
            return  Tasktile(Title: Provider.of<Taskdata>(context).listoftodo[index].name,
              ischecked:  Provider.of<Taskdata>(context).listoftodo[index].isDone,
              deleteCallback: (){
              Provider.of<Taskdata>(context).deletetask(TASK);
              },
            );
          }
      );


  }
}
