
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class Tasklist extends StatelessWidget {
  const Tasklist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Taskdata>(
      builder: (context, value, child) {
        return ListView.builder(
            itemCount: value.taskcount,
            itemBuilder: ((context, index) {
              return ListTile(
                onLongPress: () {
                  value.deleteTask(value.tasks[index]);
                },
                  title: Text(value.tasks[index].name,style: TextStyle(decoration: value.tasks[index].isDone ? TextDecoration.lineThrough : null),),
             trailing: Checkbox(     activeColor: Colors.black,
                  value: value.tasks[index].isDone,
                  
                  onChanged: ((newvalue) {
                    
                   value.updateTask(value.tasks[index]);
                  }
                  ) 
                  ));
            }));
      },
    );
  }
}
