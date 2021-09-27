import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_add.dart';

class AddTaskScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    String taskItem = '';
    return Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                cursorColor: Colors.black,
                onChanged: (value) {
                  taskItem = value;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                onPressed: () {
                  if (taskItem != '') {
                    Provider.of<TaskAdd>(context, listen: false)
                        .addNewTask(taskItem);
                    Navigator.pop(context);
                  }
                },
                style: TextButton.styleFrom(
                  elevation: 5.0,
                  backgroundColor: Colors.lightBlueAccent,
                  padding: const EdgeInsets.all(15.0),
                ),
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ],
          ),
        ));
  }
}
