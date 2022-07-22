import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_flutter_course/section/16/models/task_data.dart';
import 'package:udemy_flutter_course/section/16/widgets/tasks_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskTitle: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkboxCallback: (checkBoxState) {
                  // setState(() {
                  //   widget.tasks[index].toggleDone();
                  // });
                });
          },
          itemCount: Provider.of<TaskData>(context).tasksCounter(),
        );
      },
    );
  }
}
