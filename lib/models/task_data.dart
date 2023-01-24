





import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:todo/models/task.dart';

class Taskdata extends ChangeNotifier{

  final List<Task> _tasks = [
  
];
UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

int get taskcount => _tasks.length;

void addHabit(newHabit){
  final habit = Task(name: newHabit);
  _tasks.add(habit);
  notifyListeners();
  
}

void updateTask(Task task){
  task.toggledone();
 notifyListeners();
}

void deleteTask (Task task)
{
  _tasks.remove(task);
  notifyListeners();
}
} 