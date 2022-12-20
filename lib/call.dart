import 'package:flutter/material.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
   color: Color.fromARGB(255, 0, 140, 255),
      child: Center(
          child: Text(
        "Settings",
        style: TextStyle(fontSize: 30, color: Colors.white),
      )),
    );
  }
}
