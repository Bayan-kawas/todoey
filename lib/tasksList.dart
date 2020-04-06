import 'package:flutter/material.dart';
import 'everyTask.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/taskData.dart';

class TaskList extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
            itemCount: Provider.of<TaskData>(context).tasks.length,
            itemBuilder: (context, index) {
              return Task(
                  textTitle: taskData.tasks[index].taskName,
                  isChecked: taskData.tasks[index].isDone,
                  index: index,
                  checkboxCallback:(newValue){
                    taskData.checkboxState(newValue, index);
                  }

//                (newValue) {
////              setState(() {
////                widget.tasks[index].isDone = newValue;
////              });
//            },
              );
            });
      },
    );
  }
}
