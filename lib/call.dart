// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(3),
        child: Container(
          color: Colors.purple,
          child: Expanded(
            child: Text(
              "    I am\nlearning",
              style: TextStyle(
                  color: Color.fromARGB(255, 83, 160, 223), fontSize: 15),
            ),
          ),
        ),
      )),
    );
  }
}
