import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'addTaskScreen.dart';
import 'tasksList.dart';
import 'package:todoey/models/taskData.dart';

class TaskScreen extends StatelessWidget {
  //Widget BuildBottomSheet(BuildContext context) => Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: AddTask(

//                    addNewTaskCallback: (newTask) {
////                      setState(() {
////                        tasks.add(TaskModel(taskName: newTask));
////                      });
//                      Navigator.pop(context);
//
                 ),
                ),
              ),
            );
          },),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(30, 40, 0, 30),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(
                      Icons.list,
                      size: 25,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'ToDoey',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '${Provider.of<TaskData>(context).tasksCount} Tasks ',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: TaskList()),
            )
          ],
        ),
      ),
    );
  }
}
