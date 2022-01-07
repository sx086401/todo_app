import 'package:flutter/material.dart';
import 'package:flutter_todo/models/task_provider.dart';
import 'package:provider/provider.dart';

import 'ui/task_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskProvider>(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
