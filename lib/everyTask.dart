import 'package:flutter/material.dart';
import 'package:todoey/models/taskData.dart';
import 'package:provider/provider.dart';
class Task extends StatelessWidget {
  final bool isChecked ;
  final String textTitle;
  final Function checkboxCallback;
  final int index;
  Task({this.textTitle,this.isChecked,this.checkboxCallback,this.index});
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return GestureDetector(
          onLongPress: (){
           taskData.deleteTask(index);
          },
          child: ListTile(
            title: Text(
              textTitle,
              style: TextStyle(
                  decoration: isChecked ? TextDecoration.lineThrough : null),
            ),
            trailing: Checkbox(
              activeColor: Colors.lightBlueAccent,
              value: isChecked,
              onChanged:checkboxCallback,

            ),
          ),
        );
      },

    );
  }
}


