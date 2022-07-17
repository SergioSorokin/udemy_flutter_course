import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  static const String routName = 'TasksScreen';
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text('Hi'),
    );
  }
}
