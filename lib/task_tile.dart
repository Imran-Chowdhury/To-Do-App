import 'package:flutter/material.dart';

class Tasktile extends StatefulWidget {

  Tasktile({this.ischecked,this.Title,this. deleteCallback});

  String Title;
  bool ischecked;
  Function  deleteCallback;
  @override
  _TasktileState createState() => _TasktileState();
}

class _TasktileState extends State<Tasktile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      // onLongPress: deleteCallback,
      title:  Text(widget.Title,
        style: TextStyle(
            decoration: widget.ischecked? TextDecoration.lineThrough:null,

        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
          value: widget.ischecked,

          onChanged:(newvalue){
          setState(() {
            widget.ischecked = newvalue;

          });

          }
      ),

    );
  }
}