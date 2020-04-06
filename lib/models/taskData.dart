import 'package:flutter/material.dart';
import 'package:todoey/models/taskModel.dart';
class TaskData extends ChangeNotifier{
  List<TaskModel> tasks = [
    TaskModel(taskName: "buy milk"),
    TaskModel(taskName: "go to gym"),
    TaskModel(taskName: "meeting employee"),
  ];

  int get tasksCount{
    return tasks.length;
  }
  void addTask(String taskContent){
    tasks.add(TaskModel(taskName: taskContent));
    notifyListeners();
  }
   checkboxState(bool newValue,int index) {
    tasks[index].isDone=newValue;
    notifyListeners();
  }
  deleteTask(int index){
    tasks.removeAt(index);
    notifyListeners();
  }
 }