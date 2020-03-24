import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final bool isChecked ;
  final String textTitle;
  final Function checkboxCallback;
  Task({this.isChecked,this.textTitle,this.checkboxCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
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
    );
  }
}

