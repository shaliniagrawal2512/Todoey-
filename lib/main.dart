import 'package:flutter/material.dart';
import 'screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_add.dart';

void main() {
  runApp(Todoey());
}

class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TaskAdd(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: TasksScreen(),
        ));
  }
}
