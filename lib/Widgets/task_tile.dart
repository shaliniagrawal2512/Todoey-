import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallBack,
      required this.removeTask});
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;
  final Function removeTask;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: checkboxCallBack as void Function(
              bool?)? //toggleCheckBox as void Function(bool?)?,
          ),
      onLongPress: removeTask as void Function()?,
    );
  }
}
