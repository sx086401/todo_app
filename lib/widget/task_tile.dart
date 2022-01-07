import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?)? checkboxCallback;

  TaskTile({this.isChecked = false, this.taskTitle = '', required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: GestureDetector(
        child: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
