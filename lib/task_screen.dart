
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_2/list_of_task.dart';
import 'task_tile.dart';
import 'add_task_screen.dart';
import 'task_list.dart';
import 'Task.dart';

class TaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {




    return  Scaffold(

      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: (){

            showModalBottomSheet(context: context, builder: (context) =>
                AddTaskScreen());




        },
      ),
      backgroundColor: Colors.lightBlueAccent,
      resizeToAvoidBottomInset: true,
      body:SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(30.0, 30.0,0.0,0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // padding: EdgeInsets.symmetric(vertical: 50.0,horizontal: 30.0),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: Icon(
                      Icons.list,
                      color: Colors.lightBlueAccent,
                      size: 30.0,
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Text(
                    'Todoey',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '${Provider.of<Taskdata>(context).listoftodo.length} Tasks',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0
                    ),)
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
                ),
                  child:  TaskList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// AddTaskScreen((newtask){
// setState(() {
// print(newtask);
// Provider.of<Taskdata>(context).listoftodo.add(TASK(name: newtask));
// });
// Navigator.pop(context);
//
// }));
