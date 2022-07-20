import 'package:flutter/material.dart';
import 'package:udemy_flutter_course/section/16/models/task.dart';
import 'package:udemy_flutter_course/section/16/widgets/tasks_tile.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key, required this.tasks}) : super(key: key);
  final List<Task> tasks;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback: (checkBoxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
