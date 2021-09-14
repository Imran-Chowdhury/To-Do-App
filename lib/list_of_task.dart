import 'package:flutter/material.dart';
import 'Task.dart';

class Taskdata extends ChangeNotifier{


  List<TASK> listoftodo = [
    TASK(name: 'Buy milk'),
    TASK(name: 'Buy egg'),
    TASK(name: 'Buy coke'),
  ];


  void changetext(text){
    listoftodo.add(TASK(name: text));
    notifyListeners();
  }

  void deletetask(TASK){
    listoftodo.remove(TASK);
    notifyListeners();
  }

}