


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Consumer<Taskdata>(
      builder: (context, value,  child) {  
       return Container(
        padding: const EdgeInsets.only(
            top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 32.0,
              child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    size: 50.0,
                  )),
            ),
            const Text(
              "Habit Tracker",
              style: (TextStyle(
                  color: Colors.white, 
                  fontWeight: FontWeight.w900,
                  fontSize: 40)),
            ),
            Text(
              '${value.taskcount} Task',
              style: (const TextStyle(color: Colors.white, fontSize: 18.0)),
            ),
          ],
        ),
      );
      },
     
    );
  }
}

