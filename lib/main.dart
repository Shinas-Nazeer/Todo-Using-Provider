import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task.dart';
import 'package:todo/models/task_data.dart';
import 'package:todo/screens/Screen_task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Taskdata(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            iconTheme: const IconThemeData(color: Colors.white),
            fontFamily: ('Bebas'),
          ),
          home: const TaskScreen()),
    );
  }
}


