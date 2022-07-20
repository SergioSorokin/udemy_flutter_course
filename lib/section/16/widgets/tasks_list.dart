import 'package:flutter/material.dart';
import 'package:udemy_flutter_course/section/16/models/task.dart';
import 'package:udemy_flutter_course/section/16/widgets/tasks_tile.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy butter'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (checkBoxState){
            setState((){
              tasks[index].toggleDone();
            });
          }
        );
      },
      itemCount: tasks.length,
    );
  }
}
