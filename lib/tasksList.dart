import 'package:flutter/material.dart';
import 'everyTask.dart';
import 'package:todoey/models/taskModel.dart';

class TaskList extends StatefulWidget {
  final List tasks;
  TaskList(this.tasks);
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {
          return Task(
            isChecked: widget.tasks[index].isDone,
            textTitle: widget.tasks[index].taskName,
          );
        });
  }
}
