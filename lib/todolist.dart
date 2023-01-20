// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ToDo extends StatelessWidget {
  Function(bool?)? onChanged;
  final bool taskcompleted;
  final String taskname;
  ToDo(
      {super.key,
      required this.onChanged,
      required this.taskcompleted,
      required this.taskname});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        width: 350,
        height: 60,
        // ignore: sort_child_properties_last
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 10),
          child: Row(
            children: [
              Checkbox(
                value: taskcompleted,
                onChanged: onChanged,
                activeColor: Colors.black,
              ),
              Text(
                taskname,
                style: TextStyle(
                    decoration:
                        taskcompleted // if task is completed then show the linethrough property otherwise show none
                            ? TextDecoration.lineThrough
                            : TextDecoration.none),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
        ),
      ),
    );
  }
}
