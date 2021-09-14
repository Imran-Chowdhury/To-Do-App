

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey_2/list_of_task.dart';
import 'package:todoey_2/task_screen.dart';
import 'task_list.dart';
import 'Task.dart';
import 'package:provider/provider.dart';


class AddTaskScreen extends StatefulWidget {



  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String newtask;

  @override
  Widget build(BuildContext context) {
    return  Container(

        padding: EdgeInsets.all(40.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
            ),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              // controller: myController,
              onChanged: (value){
                newtask= value;


              },

            ),
            SizedBox(height: 20.0,),
            FlatButton(
              onPressed:(){
                // widget.addtaskcallback(newtask);
                setState(() {
                  Provider.of<Taskdata>(context,listen: false).changetext(newtask);

                });
                Navigator.pop(context);

              },
              child: Text('ADD'),
              color: Colors.lightBlueAccent,)
          ],
        ),
      );
  }
}
