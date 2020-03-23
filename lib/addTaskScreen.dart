import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Add Task',
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              child: Text('Add',
              style:
                TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),),
              onPressed: (){

              },
            ),
          ],
        ),
      ),
    );
  }
}
