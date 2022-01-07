import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter_todo/models/task.dart';

class TaskProvider with ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Task 1'),
    Task(name: 'Task 2'),
    Task(name: 'Task 3'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void addTask(String addTaskString) {
    _tasks.add(Task(name: addTaskString));
    notifyListeners();
  }

  int get taskCount {
    return _tasks.length;
  }
}
