import 'package:flutter/material.dart';
import 'taskScreen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/taskData.dart';

void main() => runApp(
      ChangeNotifierProvider<TaskData>(
        create:(context)=> TaskData(),
        child: MaterialApp(
        //  debugShowCheckedModeBanner: false,
          home: MyApp(),
        ),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TaskScreen();
  }
}
