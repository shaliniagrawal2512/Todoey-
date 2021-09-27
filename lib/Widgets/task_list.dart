import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey/models/task_add.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Consumer<TaskAdd>(
      builder: (context, taskAdd, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskAdd.tasks[index];
            return TaskTile(
                isChecked: task.isDone,
                taskTitle: task.name,
                checkboxCallBack: (bool? checkBoxState) {
                  if (checkBoxState != null) {
                    taskAdd.updateTask(task);
                  }
                },
                removeTask: () {
                  taskAdd.removeTask(task);
                });
          },
          itemCount: taskAdd.taskCount,
        );
      },
    );
  }
}
