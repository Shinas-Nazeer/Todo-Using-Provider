import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todo/constants/constants.dart';
import 'package:todo/models/task.dart';
import 'package:todo/models/task_data.dart';

class AddHabit extends StatelessWidget {
  const AddHabit({super.key});

  @override
  Widget build(BuildContext context) {
    String newHabit1 = 'add Habits';
    return Consumer<Taskdata>(
      builder: (context, value, child) {
        return Container(
        color: const Color(0xff757575),
        child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: kBorderRadius,
            ),
            child: Column(
              children: [
                const Text(
                  'Add Habits',
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    onChanged: (newHabit) {
    newHabit1 = newHabit;
                    },
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                    autofocus: true,
                    textAlign: TextAlign.center,
                    cursorColor: Colors.black,
                  ),
                ),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: (() {
                     value.addHabit(newHabit1); 
                    Navigator.pop(context);
                    }),
                    child: const Text('Add'))
              ],
            )),
      );
      },
    
    );
  }
}
