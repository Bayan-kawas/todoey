import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
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
    );
  }
}
