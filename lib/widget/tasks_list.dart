import 'package:flutter/material.dart';
import 'package:flutter_todo/models/task_provider.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final task = Provider.of<TaskProvider>(context).tasks[index];

        return TaskTile(
          taskTitle: task.name,
          isChecked: task.isDone,
          checkboxCallback: (checkboxState) {
            Provider.of<TaskProvider>(context, listen: false).updateTask(task);
          },
        );
      },
      itemCount: Provider.of<TaskProvider>(context).tasks.length,
    );
  }
}
