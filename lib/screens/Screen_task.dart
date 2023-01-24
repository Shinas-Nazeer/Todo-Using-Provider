import 'package:flutter/material.dart';
import 'package:todo/constants/constants.dart';

import 'package:todo/widgets/tasklist.dart';


import '../widgets/add_habit.dart';
import '../widgets/appbar_widget.dart';


class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});





  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: const AddHabit()
                    ),
                    )
                    
                    
                    );
      },
      backgroundColor: Colors.black,
      child: const Icon(
        Icons.add,
        size: 30.0,
      ),
    ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            const AppbarWidget(),
          Expanded(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child:  Tasklist(),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: kBorderRadius,
                )),
          )
        ],
      ),
    );
  }
}

