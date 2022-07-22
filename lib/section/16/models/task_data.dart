import 'package:flutter/foundation.dart';
import 'package:udemy_flutter_course/section/16/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy butter'),
  ];
  int tasksCounter() {
    return tasks.length;
  }
}
